module V1
  class EventsController < ApiController
    before_action :find_event, only: [:update, :destroy]

    def index
      search_params = params[:search]
      events = Event.by_search(search_params)
      render json: events
    end

    def show
      event = Event.where("date > ?", Time.now).order("date ASC").first
      render json: event
    end

    def create
      event = Event.new(event_params)
      event.save! if event.valid?
      render json: event ? event : { message: "Invalid event" }
    end

    def update
      @event.update(event_params)
      render json: @event
    end

    def destroy
      @event.destroy
      render json: { message: "Event was deleted" }
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
