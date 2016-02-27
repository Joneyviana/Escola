class RemovePersonIdToClassroom < ActiveRecord::Migration
  def change
    remove_reference :classrooms, :person_id, index: true
  end
end
