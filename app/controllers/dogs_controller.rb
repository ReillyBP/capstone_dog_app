class DogsController < ApplicationController
  def index
  end
  def show
    @dog = Dog.find_by(id: params[:id])
    # render "show.html.erb"
  end
  def update
    @dog = Dog.find_by(id: params[:id])
    # render "edit.html.erb"
  end
  def edit
    @dog = Dog.find_by(id: params[:id])
    render "show.html.erb"
  end
  def new
    @dog = Dog.new
    # render "new.html.erb"
  end
  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    flash[:danger] = "This dog has been successfully deleted from your profile"
    # redirect_to "/"
  end
  def create
    dog = Dog.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
      location: params[:location],
      vaccinations: params[:vaccinations],
      sex: params[:sex],
      image: params[:image],
      breeder: params[:breeder])
    if dog.save
      session[:user_id] = user.user_id
      flash[:success] = "You have successfully added this dog to your profile"
      redirect_to "/dogs/#{@dog.id}"
    else
      flash[:warning] = "Invalid entry. Please sign in and try again"
      redirect_to "/users/sign_up"
    end
  end
end
