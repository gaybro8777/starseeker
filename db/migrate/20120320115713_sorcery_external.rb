class SorceryExternal < ActiveRecord::Migration[4.2]
  def self.up
    create_table :authentications do |t|
      t.integer :user_id, :null => false
      t.string :provider, :uid, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :authentications
  end
end
