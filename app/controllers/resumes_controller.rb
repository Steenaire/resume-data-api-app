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
    @student.save
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.assign_attributes(student_params)
    @student.save
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
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
        :photo,
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
        ],
        skills_attributes: [
          :id,
          :student_id,
          :skill_name
        ],
        capstones_attributes: [
          :id,
          :student_id,
          :name,
          :description,
          :url,
          :screenshot
        ]
      )
    end

end
