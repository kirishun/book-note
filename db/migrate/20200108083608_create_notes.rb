class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :author
      t.string :image
      t.text :story
      t.text :review
      t.integer :user_id
      t.timestamps
    end
  end
end
