class SightingsController < ApplicationController
    def index
        sighting = Sighting.where(date: params[:start_date]..params[end_date])
        render json: sighting
    end
    def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
            render json: sighting
        else 
            render json: sighting.errors
        end
    end
    def destroy
        sighting = Sighting.find(params[:id])
        if sighting.destroy
            render json:sighting
        else
            render json:sighting.errors
        end
    end
    private 
    def sighting_params
        params.require(:sighting).permit(:animal, :date, :latitude_and_longitude)
    end
end
