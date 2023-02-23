class GardensController < ApplicationController
    def home
        redirect_to gardens_path
    end
    
    def index
        @gardens = Garden.all
    end

    def show
        @garden = Garden.find(params[:id])
        @plants = @garden.plants
    end
end
