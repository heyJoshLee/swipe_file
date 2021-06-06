class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, :slug
      t.text :body
      t.integer :user_id, :type_id, :industry_id
      t.timestamps
    end
  end
end
