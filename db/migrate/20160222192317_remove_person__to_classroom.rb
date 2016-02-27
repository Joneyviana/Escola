class RemovePersonToClassroom < ActiveRecord::Migration
  def change
    remove_column :classrooms, :person_id, :string
  end
end
