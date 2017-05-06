class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :coordinates
      t.belongs_to :user,  index: true

      t.timestamps null: false
    end
  end
end
