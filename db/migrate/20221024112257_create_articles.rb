class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :value
      t.integer :category_id
      t.integer :user_id
      t.integer :number_of_likes
      t.string :image_url
      t.string :category_id
      t.string :user_id

      t.timestamps
    end
  end
end
