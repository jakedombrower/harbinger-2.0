class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author_id
      t.text :content
      t.date :date_published

      t.timestamps
    end
  end
end
