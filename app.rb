require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  if @restaurants.empty?
    "There's no Restaurants yet ): !"
  else
    erb :index
  end 
end

get "/about" do
  erb :about
end

get "/restaurant/:id" do
  @restaurant = Restaurant.find(params[:id])
  if @restaurant.nil?
    erb :error
  else
    erb :show
  end
end