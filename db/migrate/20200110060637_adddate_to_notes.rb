class AdddateToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :date, :string
  end
end
