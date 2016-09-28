class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    #@job = Category.job
   @categories = Job.categories
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    if @job.save
       redirect_to jobs_path, notice: '求人の新規登録が完了しました.' 
    else
        render :new 
        end
    
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    
      if @job.update(job_params)
            redirect_to jobs_path, notice: '求人の編集が完了しました.' 
    else
        render :new 
      end
    
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    
      redirect_to jobs_path, notice:'求人の削除が完了しました'
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :description, :company,:salary,:area)
    end
end
