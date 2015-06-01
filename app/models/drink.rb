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

class Drink < ActiveRecord::Base
  belongs_to :user
end
