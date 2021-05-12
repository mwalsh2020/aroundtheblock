class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string :comment
      t.references :user, foreign_key: true
      t.references :posting, foreign_key: true
      t.boolean :is_accepted, default: false
      t.timestamps
    end
  end
end

