class CreateSteamUsers < ActiveRecord::Migration
  def change
    create_table :steam_users do |t|	
      t.string :uid
      t.string :nickname
      t.string :avatar_url
      t.string :profile_url

      t.timestamps null: false
    end
    add_index :steam_users, :uid, unique: true
  end
end
