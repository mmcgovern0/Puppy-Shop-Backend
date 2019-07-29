class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            payload = user_payload(user)
            render json: { token: encode_token(payload) }
        else
            render json: { errors: user.errors.full_messages}
        end
    end

    def profile
        render json: current_user
    end

    def index
        render json: User.all
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    private 

    def user_params
        params.permit(:username,
            :password, 
            :first_name, 
            :last_name, 
            :email, 
            :phone, 
            :address, 
            :city, 
            :state, 
            :zip, 
            :balance)
    end
end
