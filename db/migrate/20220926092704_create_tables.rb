class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|

      t.integer :num_table
      t.integer :occupation 
      t.integer :nbr_chaises

      t.timestamps
    end
  end
end
