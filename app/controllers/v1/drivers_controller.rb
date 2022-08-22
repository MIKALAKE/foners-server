module V1
  class DriversController < ApiController
    skip_before_action :authenticate_v1_user!, only: [:index, :show]
    before_action :find_driver, only: [:show, :update, :destroy]

    def index
      search_params = params[:search]
      drivers = Driver.by_search(search_params)
      render json: drivers
    end

    def show
      render json: @driver
    end

    def create
      driver = Driver.new(driver_params)
      driver.save! if driver.valid?
      render json: driver ? driver : { message: "Invalid driver" }
    end

    def update
      @driver.update(driver_params)
      render json: @driver
    end

    def destroy
      @driver.destroy
      render json: { message: "Driver was deleted" }
    end

    protected

    def driver_params
      params.permit(:first_name, :avatar_url, :birth_date, :height, :last_name, :nationality, :nickname, :race_number, :points, :description, :constructor_id)
    end

    def find_driver
      @driver ||= Driver.find(params[:id])
    end
  end
end
