class JobsController < ApplicationController
  def index
    p "In the index method!!!!!!"
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

  private

  def job_params
    p "In a private method!!!!!!"
    params.require(:job).permit(:title, :description)
  end

end
