class ResumesController < ApplicationController
  def index
    @students = Student.all
    render json: @students
  end

  def create 
    @student = Student.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], short_bio: params[:short_bio], linkedin: params[:linkedin], twitter_handle: params[:twitter_handle], website: params[:website], resume: params[:resume], github: params[:github], photo: params[:photo], experiences: params[:experiences])
    if @student.save
      render :show
    else
      render json: {errors: @student.errors.full_messages}
    end
  end
end
