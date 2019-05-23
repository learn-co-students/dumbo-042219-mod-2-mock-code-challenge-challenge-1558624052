class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :guests_id
      t.integer :episodes_id
      t.integer :guest_rating
    end
  end
end
