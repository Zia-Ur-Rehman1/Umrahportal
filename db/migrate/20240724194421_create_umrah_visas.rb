class CreateUmrahVisas < ActiveRecord::Migration[7.1]
  def change
    create_table :umrah_visas do |t|
      t.string :visa_type, null: false
      t.integer :price, null: false
      t.string :duration

      t.timestamps
    end
  end
end
