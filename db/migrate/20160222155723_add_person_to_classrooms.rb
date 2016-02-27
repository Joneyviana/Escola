class AddPersonToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :person_id, :string
  end
end
