module Api
  module V1
    class GuitarsController < ApplicationController
      before_action :set_guitar, only: [:show, :update, :destroy]

      # GET /guitars
      def index
        @guitars = Guitar.all

        render json: @guitars
      end

      # GET /guitars/1
      def show
        render json: @guitar
      end

      # POST /guitars
      def create
        @guitar = Guitar.new(guitar_params)

        if @guitar.save
          render json: @guitar, status: :created, location: @guitar
        else
          render json: @guitar.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /guitars/1
      def update
        if @guitar.update(guitar_params)
          render json: @guitar
        else
          render json: @guitar.errors, status: :unprocessable_entity
        end
      end

      # DELETE /guitars/1
      def destroy
        @guitar.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_guitar
          @guitar = Guitar.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def guitar_params
          params.require(:guitar).permit(:title, :link, :author, :last_post, :replies, :views)
        end
    end
  end
end

