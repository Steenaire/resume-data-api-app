class ResumesController < ApplicationController
  def index
    @students = Student.all
    render :json => @students, :include => [
      :capstones,
      :educations,
      :experiences,
      :skills
    ]
  end
end
