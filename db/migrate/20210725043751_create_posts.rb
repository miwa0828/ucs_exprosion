class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :detail
      t.string :image_id
      t.integer :owner_id     
      t.datetime :created_at
      t.datetime :update_at
      t.timestamps
    end
  end
end
