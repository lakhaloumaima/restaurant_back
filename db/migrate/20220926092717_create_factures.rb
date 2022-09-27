class CreateFactures < ActiveRecord::Migration[7.0]
  def change
    create_table :factures do |t|

      t.string :total 

      t.string :date 

      t.timestamps
    end
  end
end
