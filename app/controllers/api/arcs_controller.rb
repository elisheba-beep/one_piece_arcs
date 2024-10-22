# app/controllers/api/arcs_controller.rb
module Api
  class ArcsController < ApplicationController
    def index
      @arcs = Arc.all
      render json: @arcs
    end

    def show
      @arc = Arc.find(params[:id])
      render json: @arc
    end

    def create
      @arc = Arc.new(arc_params)

      if @arc.save
        render json: @arc, status: :created
      else
        render json: { error: "Arc creation failed" }, status: :unprocessable_entity
      end
    end

    private

    def arc_params
      params.require(:arc).permit(:name, :description, :thumbnail)
    end
  end
end
