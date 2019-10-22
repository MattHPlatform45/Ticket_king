class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :number_of_tickets
      t.integer :user_id
      t.string :name
      t.text :description
      t.references :category, foreign_key: true
      t.datetime :date
      t.timestamps
    end
  end
end
