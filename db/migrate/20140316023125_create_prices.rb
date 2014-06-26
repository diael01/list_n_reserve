class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :reservationType
      t.decimal :reservationPrice
      t.text :pricingDescription
      t.integer :facilityId
      t.integer :players

      t.timestamps
    end
  end
end
