class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
  	set_guest
  end

  def new
  	@guest = Guest.new
  end

  def create
  	@guest = Guest.create(guest_params)
  	redirect_to @guest
  end

  def edit
  	set_guest
  end

  def update
  	set_guest
  	@guest.update(guest_params)
  	redirect_to @guest
  end

  def destroy
  	set_guest
  	@guest.destroy
  	redirect_to guests_path
  end

  private

  def set_guest
  	@guest = Guest.find(params[:id])
  end

  def guest_params
  	params.require(:guest).permit(:name, :occupation)
  end
end
