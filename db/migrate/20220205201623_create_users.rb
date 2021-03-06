class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    enable_extension "pgcrypto"
    create_table :users do |t|
      t.jsonb :email

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end


