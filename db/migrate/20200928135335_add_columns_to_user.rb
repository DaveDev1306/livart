class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :creator, :boolean
    add_column :users, :location, :string
    add_column :users, :bio, :text
    add_column :users, :category, :string
    add_column :users, :social_media, :string
  end
end
