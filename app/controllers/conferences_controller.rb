class ConferencesController < ApplicationController
    def index
       @conferences = Conference.all 
    end
    def show
        @conference = Conference.find(params[:id])
        @audios = @conference.audio_segments

        # hashes:
        @numberUserSpeak = @conference.hashUserUniqueSpeak
        @averageUserSpeak = @conference.hashAverageUser

        # array
        @biggestContributor = @conference.biggestContributor
        @leastContributor = @conference.leastContributor

    end
end
