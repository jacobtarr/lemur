class DropUserTypeToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :user_type, :string
  end
end
