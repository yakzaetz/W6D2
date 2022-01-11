class UsersController < ApplicationController
    def index
        render plain: "I'm in the index actions!"
    end

    def create
        render json: params
    end 

    def show
        # user = @users.find(params[:id])
        # if @users 
        #     render json: user
        # else
            render json: params
        # end
    end
end