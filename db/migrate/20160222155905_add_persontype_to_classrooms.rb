class AddPersontypeToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :person_type, :string
  end
end
