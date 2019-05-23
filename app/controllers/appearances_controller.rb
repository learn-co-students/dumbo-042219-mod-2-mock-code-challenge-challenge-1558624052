class AppearancesController < ApplicationController

	def index
		@appearances = Appearance.all
	end

	def show
		set_app
	end

	def new
		@appearance = Appearance.new
	end

	def create
		@appearance = Appearance.create(app_params)
		render episode_path(@episode)
	end

	def edit
		set_app
	end

	def update
		set_app
		@appearance.update(app_params)
		redirect_to @appearance
	end

	def delete
		set_app
		@appearance.destroy
		redirect_to apperances_path
	end

	private

	def set_app
		@appearance = Appearance.find(params[:id])
	end

	def app_params
		params.require(:appearance).permit(:guest_rating, :guest_id, :episode_id)
	end
end