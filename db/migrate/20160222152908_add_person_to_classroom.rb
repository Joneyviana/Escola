class AddPersonToClassroom < ActiveRecord::Migration
  def change
    add_reference :classrooms, :person_id, index: true
  end
end
