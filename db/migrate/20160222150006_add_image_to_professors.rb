class AddImageToProfessors < ActiveRecord::Migration
  def change
     add_column :professors, :image_id, :string
  end
end
