class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
        @conferences = @user.conferenceUnique
    end
      
end
