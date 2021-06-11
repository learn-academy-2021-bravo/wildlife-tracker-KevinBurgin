class AnimalsController < ApplicationController
    def show
        animal =Animal.find(params[:id])
        render json: Animal.where(animal_id:params[:id])
    end
    def index
        animal = Animal.all
        render json: animal
    end
    def update
        animal = Animal.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
            render json: animal
        else 
            render json: animal.errors
        end
    end
    def destroy
        animal = Animal.find(params[:id])
        if animal.destroy
            render json: animal
        else 
            render json: animal.errors
        end

    end
    private
    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end
end
