class CreateEpisodes < ActiveRecord::Migration[7.2]
  def change
    create_table :episodes do |t|
      t.string :name
      t.integer :number
      t.string :video_url
      t.string :thumbnail
      t.references :arc, null: false, foreign_key: true

      t.timestamps
    end
  end
end
