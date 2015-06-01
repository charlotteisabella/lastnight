# == Schema Information
#
# Table name: users
#
#  id     :integer          not null, primary key
#  age    :integer
#  gender :string
#

class User < ActiveRecord::Base
  has_many :drinks
  has_many :foods
end
