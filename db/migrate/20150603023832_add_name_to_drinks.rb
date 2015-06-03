class AddNameToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :name, :string
  end
end
