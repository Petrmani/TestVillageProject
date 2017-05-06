class AddcolumnsToVillage < ActiveRecord::Migration
  def change
  	add_column(:villages, :name, :string, default: "draft")
  	add_column(:villages, :wood, :integer)
  	add_column(:villages, :clay, :integer)
  	add_column(:villages, :iron, :integer)
  	add_column(:villages, :population, :integer)
  	add_column(:villages, :farm_level, :integer)
  	add_column(:villages, :wood_cutter, :integer)
  	add_column(:villages, :clay_pit, :integer)
  	add_column(:villages, :iron_mine, :integer)
  end
end
