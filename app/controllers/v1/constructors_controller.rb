module V1
  class ConstructorsController < ApiController
    before_action :find_constructor, only: [:show, :update, :destroy]

    def index
      constructors = Constructor.all
      render json: constructors
    end

    def show
      constructor = Constructor.find(params[:id])
      render json: constructor
    end

    def create
      constructor = Constructor.new(constructor_params)
      constructor.save! if constructor.valid?
      render json: constructor ? constructor : { message: "Invalide Constructor" }
    end

    def update
      @constructor.update(constructor_params)
      render json: @constructor
    end

    def destroy
      @constructor.destroy
      render json: { message: "Constructor was deleted" }
    end

    protected

    def constructor_params
      params.permit(:cover_url, :description, :first_apparence, :logo_url, :name, :origins, :titles)
    end

    def find_constructor
      @constructor ||= Constructor.find(params[:id])
    end
  end
end
