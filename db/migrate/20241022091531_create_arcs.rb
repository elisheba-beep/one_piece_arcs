class CreateArcs < ActiveRecord::Migration[7.2]
  def change
    create_table :arcs do |t|
      t.string :name
      t.text :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
