class CreatePostes < ActiveRecord::Migration[7.0]
  def change
    create_table :postes do |t|

      t.string :name_poste

      t.string :start_date 
      t.string :end_date
      
      t.timestamps
    end
  end
end
