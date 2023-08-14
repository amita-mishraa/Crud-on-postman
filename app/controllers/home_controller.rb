class HomeController < ApplicationController
  
    def index
        @homee=Homee.all()
        render json:  @homee
    end

    def show
       @homee = Homee.find(params[:id])
       if @homee
        render json: @homee
       else
        render json: {error: "unavailable"}, status: 400
       end
    end

    def create
        @homee = Homee.new(homee_params)
        if @homee.save
            render json: @homee
        else
            render json: {error: @homee.errors.full_messages}
        end
    end

    def homee_params
        params.require(:home).permit(:name, :age, :add)
    end
end
