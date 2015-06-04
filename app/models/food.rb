# == Schema Information
#
# Table name: foods
#
#  id                   :integer          not null, primary key
#  type                 :text
#  energy_in_kilojoules :float
#  sugar_in_grams       :float
#  fat_in_grams         :float
#  sodium_in_milligrams :float
#  user_id              :integer
#  created_at           :datetime
#  updated_at           :datetime
#

class Food < ActiveRecord::Base
  belongs_to :user
end
