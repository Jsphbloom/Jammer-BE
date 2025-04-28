module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        render json: users, include: { schedules: { include: :shows } }
      end

      def show
        user = User.find(params[:id])
        render json: user, include: { schedules: { include: :shows } }
      end
    end
  end
end