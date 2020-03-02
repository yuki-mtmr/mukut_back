module Api
  module V1
    class SchedulesController < ApplicationController

      def index
        @schedules = Schedule.group(:busy_day).count(:busy_day)
        render json: @schedules
      end

      def create
        schedule = Schedule.new(schedule_params)
        if schedule.save
          render json: { status: 'SUCCESS', data: schedule }
        else
          render json: { status: 'ERROR', data: schedule.errors }
        end
      end

      private

      def schedule_params
        params.require(:schedule).permit(
          :user_id,
          :busy_day,
          )
      end

    end
  end
end
