class AddPersonToClassroominteger < ActiveRecord::Migration
  def change
    add_column :classrooms, :person_id, :integer
  end
end
