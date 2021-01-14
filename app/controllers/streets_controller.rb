class StreetsController < ApplicationController
    def index
        streets = Street.all
        render json: StreetSerializer.new(streets).to_serialized_json
    end
    def show
        @street = Street.find(params[:id])
        
    end
    def create

        street = Street.create(street_params)
        render json: StreetSerializer.new(street).to_serialized_json

    end

    def destroy
        street = street.find(params[:id])
        street.destroy
        render json: StreetSerializer.new(street).to_serialized_json

    end
    private
    def street_params
        params.require(:street).permit(:name)
    end
end
