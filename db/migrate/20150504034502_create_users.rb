class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.references :followers
      t.references :following

      t.timestamps null: false
    end
  end
end
