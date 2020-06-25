class ConferencesController < ApplicationController
    def index
       @conferences = Coference.all 
    end
    def show
        @conference = Conference.find(params[:id])
    end
end
