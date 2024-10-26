class RenameNumberToEpisodeNumberInEpisodes < ActiveRecord::Migration[7.2]
  def change
    rename_column :episodes, :number, :episode_number
  end
end
