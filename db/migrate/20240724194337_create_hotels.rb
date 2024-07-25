class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.string :location
      t.string :distance
      t.string :category
      t.string :service
      t.integer :city, null: false
      t.timestamps
    end
    add_index :hotels, [:city, :name]

  end
end
