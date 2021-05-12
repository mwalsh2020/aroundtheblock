class CreatePostings < ActiveRecord::Migration[6.1]
  def change
    create_table :postings do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :shown, default: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
