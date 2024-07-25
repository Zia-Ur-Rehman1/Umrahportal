class CreateRiyalRates < ActiveRecord::Migration[7.1]
  def change
    create_table :riyal_rates do |t|
      t.decimal :rate, precision: 10, scale: 2
      t.timestamps
    end
  end
end
