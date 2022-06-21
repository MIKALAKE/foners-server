module V1
  class ConstructorsController < ApiController
    def index
      constructors = Constructor.all
      render json: constructors
    end

    def show
      constructor = Constructor.find(params[:id])
      render json: constructor
    end
  end
end
