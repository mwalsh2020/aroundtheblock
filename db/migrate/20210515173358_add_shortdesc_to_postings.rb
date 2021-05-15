class AddShortdescToPostings < ActiveRecord::Migration[6.1]
  def change
    add_column :postings, :shortdesc, :text
  end
end
