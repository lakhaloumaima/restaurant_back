class CreateLots < ActiveRecord::Migration[7.0]
  def change
    create_table :lots do |t|

      t.string :date_livraison_lot 
      t.integer :quatity_lot 

      t.timestamps
    end
  end
end
