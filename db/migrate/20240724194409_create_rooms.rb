class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.references :hotel, null: false, foreign_key: true
      t.string :room_type, null: false
      t.integer :price, null: false
      t.date  :from
      t.date :to
      
      t.timestamps
    end
    add_index :rooms, :room_type
  end
end
