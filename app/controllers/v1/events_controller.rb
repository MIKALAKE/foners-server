module V1
  class EventsController < ApiController
    def index
      events = Event.all
      render json: events
    end

    def show
      event = Event.find(params[:id])
      render json: event
    end
  end
end
