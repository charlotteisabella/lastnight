# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  age             :integer
#  gender          :string
#  name            :string
#  email           :string
#  password_digest :string
#  provider        :string
#  uid             :string
#  image           :string
#  token           :string
#  expires_at      :datetime
#

class User < ActiveRecord::Base
  has_many :drinks
  has_many :foods
  has_secure_password

  def self.omniauth(auth)
    # raise params.inspect
    #where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.token = auth.credentials.token
      user.expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
