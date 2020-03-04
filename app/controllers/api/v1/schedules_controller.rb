module Api
  module V1
    class SchedulesController < ApplicationController

			# gitからherokuへの自動反映確認行

      def index
        @schedules = Schedule.group(:busy_day).count(:busy_day)
        render json: @schedules
      end

      def create
				date = nil
				if params[:start][:dateTime]
					date = params[:start][:dateTime]	# date -> yyyy-mm-ddThh:mm:ss.s+09:00
					date = date.to_s.slice(0,10)
				else
					date = params[:start][:date]
				end
        schedule = Schedule.new(schedule_params)
        schedule.busy_day = date
        schedule.user_id = rand(1000..9999)

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
