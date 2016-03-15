class CreateCoinusers < ActiveRecord::Migration
  def change
    create_table :coinusers do |t|
      t.string :username
      t.string :email
      t.string :encryptedpwd
      t.string :userid

      t.timestamps null: false
    end
  end
end
