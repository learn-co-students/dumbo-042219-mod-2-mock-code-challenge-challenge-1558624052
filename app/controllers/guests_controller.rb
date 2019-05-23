class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.find(params[:id])

    @guest = Guest.create(guest_params)

    render :show
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])

    @guest = Guest.update(guest_params)

    render :show
  end

private

  def guest_params
    params.require(:guest).permit(:name, :occupation, episode_ids: [])

  end



end
