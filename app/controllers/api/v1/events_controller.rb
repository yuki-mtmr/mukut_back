module Api
  module V1
    class EventsController < ApplicationController
      def index
        @events = Event.all.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'Loaded events', data: @events }
      end

      def show
        render json: { status: 'SUCCESS', message: 'Loaded the event', data: @event }
      end

      def create
        event = Event.new(event_params)
        if event.save
          render json: { status: 'SUCCESS', data: event }
        else
          render json: { status: 'ERROR', data: event.errors }
        end
      end

      def destroy
        @event.destroy
        render json: { status: 'SUCCESS', message: 'Deleted the event', data: @event }
      end

      def update
        if @event.update(event_params)
          render json: { status: 'SUCCESS', message: 'Updated the event', data: @event }
        else
          render json: { status: 'SUCCESS', message: 'Not updated', data: @event.errors }
        end
      end

      private

      def set_event
        @event = Event.find(params[:id])
      end

      def event_params
        params.require(:event).permit(
          :owner_id,
          :event_title,
          :overview,
          :start_datetime,
          :end_datetime,
          :place,
          :fee,
          :max_member,
          )
      end

    end
  end
end
