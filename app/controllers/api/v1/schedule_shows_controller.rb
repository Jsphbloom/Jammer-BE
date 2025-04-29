module Api
  module V1
    class ScheduleShowsController < ApplicationController

      def index
        schedule = Schedule.find(params[:schedule_id])
        schedule_shows = schedule.schedule_shows.includes(:show)
        render json: ScheduleShowsSerializer.format_schedule_shows(schedule_shows)
      end

      def destroy
        schedule_show = ScheduleShow.find(params[:id])
        schedule_show.destroy
        head :no_content
      end
    end
  end
end
