class CreateArtWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :art_works do |t|
      t.string :name
      t.text :description
      t.float :rating
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
