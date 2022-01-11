class UsersController < ApplicationController
    def index
        # render plain: "I'm in the index actions!"
        render json: User.all
    end

    def create
        render json: params
    end 

    def show
        user = @users.find(params[:id])
        if @users 
            render json: user
        else
            render json: params
        end
    end

    def create
        user = User.new(params.require(:user).permit(:name, :email))
        # replace the `user_attributes_here` with the actual attribute keys
        user.save!
        render json: user
    end

    # private

    # def registration_params
    #     params.require(:name)
    #     params.require(:email)
    # end
end