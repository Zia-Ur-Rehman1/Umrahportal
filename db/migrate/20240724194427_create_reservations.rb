class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :room, null: false, foreign_key: true
      t.references :umrah_visa, null: true, foreign_key: true
      t.integer :days
      t.integer :adults
      t.integer :infant
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status
      t.text :description
      t.integer :days_in_makka
      t.integer :days_in_madina

      t.timestamps
    end
  end
end
