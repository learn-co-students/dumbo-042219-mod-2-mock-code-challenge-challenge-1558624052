class AddColumnsToAppearances < ActiveRecord::Migration[5.1]
  def change
    add_reference :appearances, :guest, foreign_key: true
    add_reference :appearances, :episode, foreign_key: true
  end
end
