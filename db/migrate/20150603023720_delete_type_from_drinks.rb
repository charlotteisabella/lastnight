class DeleteTypeFromDrinks < ActiveRecord::Migration
  def change
    remove_column :drinks, :type
  end
end
