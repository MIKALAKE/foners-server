module V1
  class DriversController < ApiController
    before_action :find_driver, only: [:show, :update, :destroy]

    def index
      drivers = Driver.all
      render json: drivers
    end

    def show
      render json: @driver
    end

    def create
      driver = Driver.new(driver_params)
      driver.save! if driver.valid?
      render json: driver ? driver : { msg: "none" }
    end

    def update
      @driver.update(driver_params)
      render json: @driver
    end

    def destroy
      @driver.destroy
      render json: { msg: "Deleted" }
    end

    protected

    def driver_params
      params.permit(:first_name, :avatar_url, :birth_date, :height, :last_name, :nationality, :nickname, :race_number, :constructor_id)
    end

    def find_driver
      @driver ||= Driver.find(params[:id])
    end
  end
end
