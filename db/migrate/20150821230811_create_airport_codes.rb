class CreateAirportCodes < ActiveRecord::Migration
  def change
    create_table :airport_codes do |t|
      t.string :city
      t.string :country
      t.string :airport_code

      t.timestamps null: false
    end
  end
end
