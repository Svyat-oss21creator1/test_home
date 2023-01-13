# frozen_string_literal: true

class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(car: Car.find(params[:car]), user: current_user)
    if favorite == []
      Favorite.create(car: Car.find(params[:car]), user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html { head :no_content }
      format.js { 'text' }
    end
  end
end
