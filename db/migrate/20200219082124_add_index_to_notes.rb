class AddIndexToNotes < ActiveRecord::Migration[5.2]
  def change
    add_index :notes, :title, length: 32
    add_index :notes, :author, length: 32
  end
end
