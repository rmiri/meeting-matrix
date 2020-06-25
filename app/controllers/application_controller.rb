class ApplicationController < ActionController::Base
    def welcome
        @conferences = Conference.all
        @users = User.all
    end
end
