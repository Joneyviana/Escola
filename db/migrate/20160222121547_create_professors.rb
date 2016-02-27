class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.string :register_number
      t.integer :status
      t.text :formation

      t.timestamps null: false
    end
  end
end
