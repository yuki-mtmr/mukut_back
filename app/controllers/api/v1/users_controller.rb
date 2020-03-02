module Api
  module V1
    class UsersController < ApplicationController

      def create
        user = User.new(user_params)
        if user.save
            render json: { status: 'SUCCESS', data: user }
        else
            render json: { status: 'ERROR', data: user.errors }
        end
      end

      private
        def user_params
          params.require(:user).permit(:user_name, :email)
        end
    end
  end
end
