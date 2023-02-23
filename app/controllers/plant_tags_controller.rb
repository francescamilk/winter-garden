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
        

    end

    def create
        plant = Plant.find(params[:plant_id])
        tag = Tag.find(plant_tag_params[:tag])
    
        @p_tag = PlantTag.new(plant: plant, tag: tag)
    
        if @plant_tag.save
          redirect_to garden_path(plant.garden)
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      private
    
      def plant_tag_params
        params.require(:plant_tag).permit(:tag)
      end
end
