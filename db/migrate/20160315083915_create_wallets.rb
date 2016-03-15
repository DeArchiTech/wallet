class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :walletid
      t.string :coinsaveid

      t.timestamps null: false
    end
  end
end
