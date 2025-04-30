module Api
  module V1
    class ShowsController < ApplicationController

      def index
        shows = Show.all
        render json: ShowsSerializer.format_shows(shows)
      end
    end
  end
end