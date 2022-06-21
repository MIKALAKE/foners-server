module V1
  class EventsController < ApiController
    before_action :find_event, only: [:show, :update, :destroy]

    def index
      events = Event.all
      render json: events
    end

    def show
      render json: @event
    end

    def create
      event = Event.new(event_params)
      event.save! if event.valid?
      render json: event ? event : { msg: "none" }
    end

    def update
      @event.update(event_params)
      render json: @event
    end

    def destroy
      @event.destroy
      render json: { msg: "Deleted" }
    end

    protected

    def event_params
      params.permit(:city, :country, :cover_url, :date, :description, :name)
    end

    def find_event
      @event ||= Event.find(params[:id])
    end
  end
end
