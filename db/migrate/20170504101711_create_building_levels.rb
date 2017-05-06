class CreateBuildingLevels < ActiveRecord::Migration
  def change
    create_table :building_levels do |t|
    	t.belongs_to :village, index: { unique: true }
      t.integer :Houses
      t.integer :HQ
      t.integer :woodcutter_lodge

      t.timestamps null: false
    end
  end
end
