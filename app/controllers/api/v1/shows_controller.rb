module Api
  module V1
    class ShowsController < ApplicationController

      def index
        shows = Show.all
        render json: users
      end
    end