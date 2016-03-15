class CreateCoinsaves < ActiveRecord::Migration
  def change
    create_table :coinsaves do |t|
      t.string :coinsaveid
      t.string :walletid

      t.timestamps null: false
    end
  end
end
