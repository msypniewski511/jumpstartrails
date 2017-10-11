class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.string :blurb
      t.text :content
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
