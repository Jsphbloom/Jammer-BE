module Api
  module V1
    class ScheduleShowsController < ApplicationController
      def destroy
        schedule_show = ScheduleShow.find(params[:id])
        schedule_show.destroy
        head :no_content
      end
    end
  end
end