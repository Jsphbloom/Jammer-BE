module Api
  module V1
    class ShowsController < ApplicationController

      def index
        shows = Show.all
        render json: shows
      end
    end
  end
end