class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :category
      t.string :name
      t.string :address
      t.datetime :found_on

      t.timestamps
    end
  end
end
