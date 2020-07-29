class ProspectsController < ApplicationController
    def index
        @prospects = Prospect.all
    end
    
    def new
    end

    def create
        @prospect = Prospect.new(prospect_params)

        @prospect.save
        redirect_to @prospect
    end

    def show
        @prospect = Prospect.find(params[:id])
    end


    private
    def prospect_params
        params.require(:prospect).permit(:first_name, :last_name, :email)
    end
end
