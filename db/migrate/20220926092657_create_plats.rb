class CreatePlats < ActiveRecord::Migration[7.0]
  def change
    create_table :plats do |t|

      t.string :name

      t.string :image 
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
