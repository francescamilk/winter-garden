class PlantTagsController < ApplicationController
    def new
        @garden = Garden.find(params[:garden_id])
        @plant  = Plant.find(params[:plant_id])
        @p_tag  = PlantTag.new
    end

    def create
        @garden = Garden.find(params[:garden_id])
        @plant  = Plant.find(params[:plant_id])

        @tag_ids = params[:plant_tag][:tag_id]
        @tag_ids.each do |id|
            next if id == ""
            PlantTag.create(plant: @plant, tag_id: id)
        end
        
        redirect_to garden_path(@garden)
    end
end
