class UserCreation < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :tumblr_uid
      t.string :nickname
      t.string :avatar
      t.string    :persistence_token,   :null => false
      t.string    :crypted_password
      t.string    :password_salt
      t.integer   :login_count,         :null => false, :default => 0
      t.integer   :failed_login_count,  :null => false, :default => 0
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip
      t.timestamps
    end

    create_table :authentications do |t|
      t.references :user
      t.string :uid
      t.string :provider
      t.string :token
      t.string :secret
    end
  end

  def down
    drop_table :authentications
    drop_table :users
  end
end
