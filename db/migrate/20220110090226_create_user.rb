class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :account_id
      t.boolean :sex
      t.date :birthday

      t.timestamps
    end
  end
end
