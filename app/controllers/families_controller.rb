class FamiliesController < ApplicationController
    def index
        @families = Family.all
        render json: @families
    end
    def show
        @family = Family.find(params[:id])
    end
    def create

        family = Family.new
        family.name = Faker::Name.first_name
        family.street = Street.find(params["street_id"])
        family.save
        render json: FamilySerializer.new(family).to_serialized_json

    end

    def destroy
        family = Family.find(params[:id])
        family.destroy
        render json: FamilySerializer.new(family).to_serialized_json

    end
end
