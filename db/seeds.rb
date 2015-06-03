User.destroy_all
Food.destroy_all
Drink.destroy_all



vodka = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1
whiskey = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1
tequila = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1
scotch = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1
bourbon = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1
gin = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1
rum = Drink.create :energy_in_kilojoules => 272, :sugar_in_grams => 0, :fat_in_grams => 0, :sodium_in_milligrams => 0, :standard_drinks => 1

vodka_and_coke = Drink.create :energy_in_kilojoules => 632, :sugar_in_grams => 26.5, :fat_in_grams => 0, :sodium_in_milligrams => 25, :standard_drinks => 1
whiskey_and_coke = Drink.create :energy_in_kilojoules => 632, :sugar_in_grams => 26.5, :fat_in_grams => 0, :sodium_in_milligrams => 25, :standard_drinks => 1
scotch_and_coke = Drink.create :energy_in_kilojoules => 632, :sugar_in_grams => 26.5, :fat_in_grams => 0, :sodium_in_milligrams => 25, :standard_drinks => 1
bourbon_and_coke = Drink.create :energy_in_kilojoules => 632, :sugar_in_grams => 26.5, :fat_in_grams => 0, :sodium_in_milligrams => 25, :standard_drinks => 1
rum_and_coke = Drink.create :energy_in_kilojoules => 632, :sugar_in_grams => 26.5, :fat_in_grams => 0, :sodium_in_milligrams => 25, :standard_drinks => 1




# == Schema Information
#
# Table name: drinks
#
#  id                   :integer          not null, primary key
#  energy_in_kilojoules :float
#  sugar_in_grams       :float
#  fat_in_grams         :float
#  sodium_in_milligrams :float
#  standard_drinks      :float
#  created_at           :datetime
#  updated_at           :datetime
#

# class Drink < ActiveRecord::Base
#   belongs_to :user
# end
