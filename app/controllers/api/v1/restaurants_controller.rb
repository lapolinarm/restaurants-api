# app/controllers/api/v1/restaurants_controller.rb
class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @restaurants = policy_scope(Restaurant)
    render json: @restaurants
  end
end
