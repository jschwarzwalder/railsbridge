class JobsController < ApplicationController
  def index
  end

  def new
    @job = Job.new
  end

  def create
    redirect_to jobs_path
  end

end
