class UsersController < ApplicationController
  def users_new
    @user = User.new
  end
end
