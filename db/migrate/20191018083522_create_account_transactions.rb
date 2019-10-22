class CreateAccountTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :account_transactions do |t|
      t.string :note
      t.float :amount
      t.references :account, foreign_key: true
      t.timestamps
    end
  end
end
