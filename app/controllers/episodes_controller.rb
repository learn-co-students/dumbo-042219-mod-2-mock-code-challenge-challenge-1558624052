class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
  	set_episode
    @appearances = Appearance.all
  end

  def new
  	@episode = Episode.new
  end

  def create
  	@episode = Episode.create
  	redirect_to @episode
  end

  def edit
  	set_episode
  end

  def update
  	set_episode
  	@episode.update(episode_params)
  	redirect_to @episode
  end

  def delete
  	set_episode
  	@episode.destroy
  	redirect_to episodes_path
  end

  private

  def set_episode
  	@episode = Episode.find(params[:id])
  end

  def episode_params
  	params.require(:episode).permit(:date, :number)
  end

end



