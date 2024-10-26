# app/controllers/api/episodes_controller.rb
module Api
  class EpisodesController < ApplicationController
    def index
      @arc = Arc.find(params[:arc_id])
      @episodes = @arc.episodes
      render json: @episodes
    end

    def show
      @episode = Episode.find(params[:id])
      render json: @episode
    end

    def create
      @arc = Arc.find(params[:arc_id])
      @episode = @arc.episodes.new(episode_params)

      if @episode.save
        render json: @episode, status: :created
      else
        render json: { error: "Episode creation failed" }, status: :unprocessable_entity
      end
    end

    private

    def episode_params
      params.require(:episode).permit(:name, :episode_number, :video_url, :thumbnail)
    end

    def by_episode_number
      episode = Episode.find_by(episode_number: params[:episode_number])
      if episode
        render json: episode, status: :ok
      else
        render json: { error: "Episode not found" }, status: :not_found
      end
    end
  end
end
