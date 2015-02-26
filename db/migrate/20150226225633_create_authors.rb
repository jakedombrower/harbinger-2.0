class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :grade
      t.text :bio
      t.string :slug, unique: true
      t.timestamps
    end
  end
end
