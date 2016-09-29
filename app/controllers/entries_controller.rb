class EntriesController < ApplicationController
  before_action :set_job, only: [:show]

  # GET /entries
  # GET /entries.json
  def index
    @jobs = Job.all
    #@category = @job.category
    @jobs = Job.order(:created_at).page(params[:page])
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @category = @job.category
  end

  # GET /entries/new
  def new
    @entry = Entry.new
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
