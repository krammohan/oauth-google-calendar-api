class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :email
      t.string :password
      t.string :token
      t.string :access_token
      t.string :refresh_token
      t.timestamps
    end
  end
end
