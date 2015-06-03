class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :age
      t.string :gender
      t.string :name
      t.string :email
      t.string :password_digest
    end
  end
end



