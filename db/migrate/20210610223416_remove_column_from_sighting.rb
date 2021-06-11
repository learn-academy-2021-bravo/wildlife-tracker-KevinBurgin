class RemoveColumnFromSighting < ActiveRecord::Migration[6.1]
  def change
    remove_column :sightings, :animal
  end
end
