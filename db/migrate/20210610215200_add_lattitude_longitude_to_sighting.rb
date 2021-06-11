class AddLattitudeLongitudeToSighting < ActiveRecord::Migration[6.1]
  def change
    add_column :sightings, :latitude_and_longitude, :string
  end
end
