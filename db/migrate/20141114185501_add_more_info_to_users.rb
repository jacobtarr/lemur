class AddMoreInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about_me, :string
    add_column :users, :website, :string
    add_column :users, :user_location, :string
  end
end
