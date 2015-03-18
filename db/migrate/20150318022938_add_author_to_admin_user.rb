class AddAuthorToAdminUser < ActiveRecord::Migration
  def change
  	change_table :admin_users do |t|
  		t.boolean :author, default: false
  	end
  end
end
