class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all

  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.find(params[:id])

    @episode = Episode.create(episode_params)

    render :show
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])

    @episode = Episode.update(episode_params)

    render :show
  end

private

  def episode_params
    params.require(:episode).permit(:date, :number)
  end



end
