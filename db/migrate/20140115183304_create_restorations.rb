class CreateRestorations < ActiveRecord::Migration
  def change
    create_table :restorations do |t|
      t.string :instrument
      t.string :description
      t.string :price_offer
      t.timestamps
    end
  end
end
