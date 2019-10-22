class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.float :price
      t.string :number
      t.boolean :on_resell, default: false
      t.boolean :sold_originally, default: false
      t.boolean :sold_on_market_place, default: false
      t.index ["event_id"], name: "index_tickets_on_event_id"
      t.index ["user_id"], name: "index_tickets_on_user_id"
      t.timestamps
    end
  end
end
