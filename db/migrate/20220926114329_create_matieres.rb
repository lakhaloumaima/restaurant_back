class CreateMatieres < ActiveRecord::Migration[7.0]
  def change
    create_table :matieres do |t|

      t.string :name

      t.string :qt_actuel 
      t.string :qt_restant 
      t.integer :price 
      t.string :name_magasin 
      t.timestamps
    end
  end
end
