module Api
  module V1
    class SchedulesController < ApplicationController
      def index
        user = User.find(params[:user_id])
        schedules = user.schedules
        render json: schedules, include: :shows
      end

      def show
        schedule = Schedule.find(params[:id])
        render json: schedule, include: :shows
      end

      def create
        user = User.find(params[:user_id])
        schedule = user.schedules.create!(schedule_params)
        render json: schedule, status: :created
      end

      private

      def schedule_params
        params.require(:schedule).permit(:name)
      end
    end
  end
end