class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :age
      t.string :gender
    end
  end
end
