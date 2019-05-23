class RemoveGuestIdAndEpisodeIdFromAppearances < ActiveRecord::Migration[5.1]
  def change
    remove_column :appearances, :guest_id, :integer
    remove_column :appearances, :episode_id, :integer
  end
end
