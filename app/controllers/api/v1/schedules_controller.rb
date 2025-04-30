module Api
  module V1
    class SchedulesController < ApplicationController
      def index
        if params[:user_id].present?
          user = User.find(params[:user_id])
          schedules = user.schedules
        else
          schedules = Schedule.all
        end
        render json: schedules, include: :shows
      end

      def show
        schedule = Schedule.find(params[:id])
        render json: schedule, include: :shows
      end

      def create
        user = User.find(params[:user_id])
        schedule = user.schedules.create!(name: params[:name] || "New Schedule")
      
        if params[:show_ids]
          shows = Show.find(params[:show_ids])
          schedule.shows << shows
        end
      
        render json: schedule.to_json(include: :shows), status: :created
      end

      private

      def schedule_params
        params.require(:schedule).permit(:name)
      end
    end
  end
end