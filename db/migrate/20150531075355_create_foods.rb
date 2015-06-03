class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :type
      t.float :energy_in_kilojoules
      t.float :sugar_in_grams
      t.float :fat_in_grams
      t.float :sodium_in_milligrams
      t.belongs_to :user
      t.timestamps
    end
  end
end
