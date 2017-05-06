class RenameVillageName < ActiveRecord::Migration
  def change
  	rename_column :villages, :name, :v_name
  end
end
