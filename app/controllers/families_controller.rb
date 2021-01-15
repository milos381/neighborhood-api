class FamiliesController < ApplicationController
    def index
        @families = Family.all
        render json: @families
    end
    def show
        @family = Family.find(params[:id])
        render json: @family, only: [:id, :name]
    end
    def create

        family = Family.create(family_params)
        render json: FamilySerializer.new(family).to_serialized_json

    end

    def destroy
        family = Family.find(params[:id])
        family.destroy
        render json: FamilySerializer.new(family).to_serialized_json

    end
    private
    def family_params
        params.require(:family).permit(:name)
    end
end
