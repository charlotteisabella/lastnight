class PagesController < ApplicationController
  before_action :set_gon

  def set_gon
    gon.set = false
  end

  def home
  end

  def session
  end

  def users
  end

  def stats
    # SHOWS THE FORM
  end

  def stats_results
    # THIS DEALS WITH THE FORM
    @age = params[:age]
    # @gender = params[:gender]
    redirect_to drinks_path( @age )
  end

  def drinks
    gon.drinks = Drink.pluck(:name)
    @age = params[:age]
  end

  def drinks_results
    @energy, @sugar, @fat, @sodium, @std_drinks = 0, 0, 0, 0, 0

    params["drink"].each_with_index do |drink, i|
      drink_db = Drink.where( :name => drink )[0]

      @energy += drink_db[:energy_in_kilojoules] * params["qty"][i].to_i
      @sugar += drink_db[:sugar_in_grams] * params["qty"][i].to_i
      @fat += drink_db[:fat_in_grams] * params["qty"][i].to_i
      @sodium += drink_db[:sodium_in_milligrams] * params["qty"][i].to_i
      @std_drinks += drink_db[:standard_drinks] * params["qty"][i].to_i
    end
  end
end
