class AddPersontypeToClassroom < ActiveRecord::Migration
  def change
    add_reference :classrooms, :person_type, index: true
  end
end
