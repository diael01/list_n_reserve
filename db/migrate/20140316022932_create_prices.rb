class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :reservationType
      t.decimal :reservationPrice
      t.text :pricingDescription
      t.int :facilityId
      t.int :players

      t.timestamps
    end
  end
end
