class AddImageToStudents < ActiveRecord::Migration
  def change
    add_column :students, :image_id, :string
  end
end
