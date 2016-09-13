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

  def new
  end

  def create
    @student = Student.new(student_params)
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
  end

  private

    def student_params
      params.require(:student).permit(
        :first_name,
        :last_name,
        :email,
        :phone_number,
        :short_bio,
        :linkedin,
        :twitter_handle,
        :website,
        :resume,
        :github,
        :photo
        educations_attributes: [
          :id, 
          :degree, 
          :university_name, 
          :details, 
          :start_date,
          :end_date,
          :student_id,
          :_destroy
        ],
        experiences_attributes: [
          :id,
          :job_title,
          :company_name,
          :details,
          :start_date,
          :end_date,
          :student_id
        ]
        )
    end

end
