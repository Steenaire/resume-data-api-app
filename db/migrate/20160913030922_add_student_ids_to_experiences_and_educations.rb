class AddStudentIdsToExperiencesAndEducations < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :student_id, :integer
    add_column :educations, :student_id, :integer
  end
end
