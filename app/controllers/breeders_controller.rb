class BreedersController < ApplicationController
  before_action :authenticate_user!
  def index
    @breeders = Breeder.all
    render "index.html.erb"
  end
  def show
    @breeder = Breeder.find_by(id: params[:id])
  end
  def update
    @breeder = Breeder.find_by(id: params[:id])
    @breeder.update(
      name: params[:name],
      location: params[:location],
      price: params[:price],
      delivery: params[:delivery],
      delivery_type: params[:delivery_type],
      image: params[:image],
      past_litters: params[:past_litters])

      flash[:success] = "You have successfully updated this breeder"
      redirect_to "/breeders/#{@breeder.id}"
  end
  def edit
    @breeder = Breeder.find_by(id: params[:id])
    render "edit.html.erb"
  end
  def new
    @breeder = Breeder.new 
  end
  def destroy
    @breeder = Breeder.find_by(id: params[:id])
    @breeder.destroy
    flash[:danger] = "This breeder has successfully deleted from your profile"
  end
  def create
    breeder = Breeder.new(
      name: params[:name],
      location: params[:location],
      price: params[:price],
      delivery: params[:delivery],
      delivery_type: params[:delivery_type],
      image: params[:image],
      past_litters: params[:past_litters])
    if breeder.save
      flash[:success] = "You have successfully added this breeder to your profile"
      redirect_to "/breeders/#{breeder.id}"
    end
  end
end
