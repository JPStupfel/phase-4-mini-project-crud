class SpicesController < ApplicationController

# rescue_from 
    def index
        render json: Spice.all
    end

    # def show
    #     render json: find_spice
    # end

    def create
        spice = Spice.create permitted_params
        render json: spice, status: :created
    end

    def update
        spice = find_spice
        spice.update permitted_params
        render json: spice
    end

    def destroy
        spice = find_spice
        spice.destroy
        render json: spice
    end

    private

    def find_spice
        Spice.find params[:id]
    end

    def permitted_params
        params.permit :title, :image, :description, :notes, :rating
    end
    

end
