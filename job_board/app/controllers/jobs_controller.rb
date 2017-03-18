class JobsController < ApplicationController
  def index
    p "In the index method!!!!!!"
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    p "In the create method!!!!!!"
    job = Job.create(job_params)
    p job
    redirect_to jobs_path
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to jobs_path
  end

  private

  def job_params
    p "In a private method!!!!!!"
    params.require(:job).permit(:title, :description)
  end

end
