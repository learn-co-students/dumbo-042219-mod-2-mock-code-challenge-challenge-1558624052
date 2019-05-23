class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(episode_params)

    redirect_to @appearance
  end

  def edit
    @appearance = Appearance.find(params[:id])
  end

  def update
    @appearance = Appearance.find(params[:id])
    @appearance.update(episode_params)

    redirect_to @appearance
  end

  def destroy
    @appearance = Appearance.find(params[:id])
    @appearance.destroy

    redirect_to episodes_path
  end

  private

  def appearance_params
    params.require(:appearance).permit!
  end
end
