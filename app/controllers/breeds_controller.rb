class BreedsController < ApplicationController
before_action :authenticate_user!
  def index
    @breeds = Breed.all
    render "index.html.erb"
  end
  def show
    @breed = Breed.find_by(id: params[:id])
  end
end
