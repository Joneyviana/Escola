class RemovePersontypeToClassroom < ActiveRecord::Migration
  def change
    remove_reference :classrooms, :person_type, index: true
  end
end
