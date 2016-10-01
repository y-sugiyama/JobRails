class EntriesController < ApplicationController
  before_action :set_job, only: [:show]

  # GET /entries
  # GET /entries.json
  # 
  def index
    #どちらの場合も作成日順にfindしてページネーション
    @jobs = Job.order(:created_at).page(params[:page])
    #もしハッシュにcategory_idをもった配列がきたら
    if params.has_key?(:category_id)
    
     @jobs=@jobs.where(category_id: params[:category_id] )
     
    end
     #キーワード検索
    if params.has_key?(:search)
      
      #@jobs= @jobs.where(:description.title.where_values.reduce(:or)).to_sql
      #scope1= @jobs.where("jobs.description LIKE ? ", "%#{params[:search]}%")
      #scope2= @jobs.where("jobs.title LIKE ? ", "%#{params[:search]}%")
      #@jobs=@jobs.where(scope1 or scope2).to_sql
      
      @jobs = @jobs.where(["jobs.description LIKE :keyword or jobs.title LIKE :keyword", keyword: "%#{params[:search]}%"])
      #@jobs = @jobs.where("jobs.description LIKE :search OR jobs.title LIKE :search ", "%#{params}%")
      puts @jobs.to_sql
     #@jobs = @jobs.where("jobs.description LIKE ? ", "%#{params[:search]}%").where("jobs.title LIKE ? ", "%#{params[:search]}%")
    
    end
    
    #全件表示のときはカテゴリ一覧を表示する
    @categories = Category.order(:name)
    
   
    
  end


  # GET /entries/1
  # GET /entries/1.json
  def show
     #Jobモデルで@belongs_to category としてるのでjobインスタンスはcategoryメソッドをもつようになる
    #job.categoryでjobに関連するcategoryインスタンスを取得できる
    @category = @job.category
  end

  # GET /entries/new
  def new
    
    #if session[:entry] then
     #  @entry =session[:entry] 
     if session[:entry] 
      @entry = Entry.new(session[:entry] )
     # puts @entry.attributes.to_yaml
      #render :new
    else
    @entry = Entry.new
    end
  end
  
  def confirm
  @entry = Entry.new(entry_params)
  
     if @entry.valid?
       session[:entry] = @entry
      render :confirm
    else
      render :new
    end
  end
  
  def thanks
     @entry = Entry.new(session[:entry])
        
    
    if @entry.save
       MailSenderMailer.send_mail(@entry).deliver
      session[:entry] = nil
      redirect_to entries_path, notice:'エントリーが完了しました'
    else
      render :new
    end 
  end

 


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:name, :email, :age, :tel, :address, :subject, :body)
    end
end

  
  #  def index
#    @cat_id = params[:category_id]
#    @jobs = Job.order(:created_at)
#    #変数.present?
#   if @cat_id.present?
#     puts '############'
#     @jobs=@jobs.where(category_id: @cat_id )
#    # @jobs = Job.all( :category_id => @cat_id )
#    # @jobs = Job.all(:conditions => { :category_id => @cat_id })
#     #@jobs = Job.order(:created_at).includes(:category_id).page(params[:page])
#   #else
#    #配列として返されたjobオブジェクトを@jobsにいれる
#   end
#    # @jobs = Job.all    
#    @jobs = Job.page(params[:page])
#  
#  end