class RemoveStudentRefToClassroom < ActiveRecord::Migration
  def change
    remove_reference :classrooms, :student, index: true, foreign_key: true
  end
end
