class DogsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
  end
  def show
    @dog = Dog.find_by(id: params[:id])
    # render "show.html.erb"
  end
  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.update(
      name: params[:name],
      age: params[:age],
      location: params[:location],
      vaccinations: params[:vaccinations],
      sex: params[:sex],
      breeder: params[:breeder],
      image: params[:image])

      flash[:success] = "You have successfully updated this dog"
      redirect_to "/dogs/#{@dog.id}"
    # render "edit.html.erb"
  end
  def edit
    @dog = Dog.find_by(id: params[:id])
    render "edit.html.erb"
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
      v = Video.create(video: params[:video], dog_id: dog.id) if params[:video]
      DogsUser.create(dog_id: dog.id, user_id: current_user.id)
      flash[:success] = "You have successfully added this dog to your profile"
      redirect_to "/dogs/#{dog.id}"
    else
      flash[:warning] = "Invalid entry. Please sign in and try again"
      redirect_to "/users/sign_up"
    end
  end

  def puppycam
    @video_link = ["https://www.youtube.com/embed/Gh1ggRitrpw","https://www.youtube.com/embed/tNMfBs6kKK0","https://www.youtube.com/embed/-CpDQ6BT5mk","https://www.youtube.com/embed/PPmnFbpnvMQ","https://www.youtube.com/embed/RTfKYDIhlVE"].sample
    render "puppycam.html.erb"
  end

end
