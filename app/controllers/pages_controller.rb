class PagesController < ApplicationController
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
    @age = params[:age]
  end

  def drinks_results
    @age = params[:age]
    @quantity = params[:qty]
    @drink = params[:drink]

    drink_db = Drink.where( :name => @drink )[0]

    @energy = drink_db[:energy_in_kilojoules].to_f * @quantity.to_i
    @sugar = drink_db[:sugar_in_grams].to_f * @quantity.to_i
    @fat = drink_db[:fat_in_grams].to_f * @quantity.to_i
    @sodium = drink_db[:sodium_in_milligrams].to_f * @quantity.to_i
    @std_drinks = drink_db[:standard_drinks].to_f * @quantity.to_i
  end
end
