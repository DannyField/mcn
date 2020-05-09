class JobsController < ApplicationController
before_action :find_job ,only: [:show, :edit, :update, :destroy]

    def index
        @jobs = Job.all
    end

    def show
        # @job = Job.find(params[:id])
    end

    def new
        @job = Job.new
    end

    def create
        @job = Job.new(job_params)
        @job.save

        redirect_to @job
    end

    def edit
        # @job = Job.find(params[:id])
    end

    def update
        # @job = Job.find(params[:id])
        @job.update(job_params)

        redirect_to @job
    end

    def destroy
        @job.destroy

        redirect_to jobs_path
    end

    private

    def job_params
        params.require(:job).permit(:title, :position_needed, :looking_for, :description, :due_date, :contact, :location, :desposit)
    end

    def find_job
        @job = Job.find(params[:id])
    end

end