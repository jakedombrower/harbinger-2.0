class AddSlugsToArticles < ActiveRecord::Migration
  def change
  	change_table :articles do |t|
  		t.string :slug, unique: true
  	end
  end
end
