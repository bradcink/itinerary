class HomeController < ApplicationController
  def index
  end

  def search
  	location = params[:location]
    parameters = { term: params[:term], limit: 8 }
    render json: Yelp.client.search(location, parameters)
  end
end
