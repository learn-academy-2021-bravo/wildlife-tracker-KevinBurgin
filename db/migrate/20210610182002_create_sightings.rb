class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :animal
      t.datetime :date

      t.timestamps
    end
  end
end
