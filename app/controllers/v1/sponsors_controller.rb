module V1
  class SponsorsController < ApiController
    skip_before_action :authenticate_v1_user!, only: [:index, :show]
    before_action :find_sponsor, only: [:show, :update, :destroy]

    def index
      sponsors = Sponsor.all
      render json: sponsors
    end

    def show
      render json: @sponsor
    end

    def create
      sponsor = Sponsor.new(sponsor_params)
      sponsor.save! if sponsor.valid?
      render json: sponsor ? sponsor : { message: "Invalid sponsor" }
    end

    def update
      @sponsor.update(event_params)
      render json: @sponsor
    end

    def destroy
      @sponsor.destroy
      render json: { message: "Sponsor was deleted" }
    end

    protected

    def sponsor_params
      params.permit(:logo_url, :name)
    end

    def find_sponsor
      @sponsor ||= Sponsor.find(params[:id])
    end
  end
end
