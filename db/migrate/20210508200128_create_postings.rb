class CreatePostings < ActiveRecord::Migration[6.1]
  def change
    create_table :postings do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :shown, default: true
      t.references :user, references: :users, foreign_key:{to_table: :users}
      t.timestamps
    end
  end
end
