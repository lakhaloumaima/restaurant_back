class CreateCommandes < ActiveRecord::Migration[7.0]
  def change
    create_table :commandes do |t|

      t.string :date_commande
      t.integer :etat_commande 
      
      t.timestamps
    end
  end
end
