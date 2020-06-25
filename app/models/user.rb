class User < ApplicationRecord
    has_many :audio_segments 
    has_many :conferences, through: :audio_segment
    has_many :conferences

    # Create business logic that calculates how many times a participant speaks during a call
    def totalNumberUserSpeak
        self.audio_segments.length
    end

    # not asked, but I thought it was going to be a good add on 
    def conferceTimesUserSpeak(confer)
        self.audio_segments.select{|e| e.conference === confer }
    end

    # Total amount of time the user spoke
    def totalTimeSpeaking
        self.audio_segments.map{|as| 
            totalSegment = as.audioEnd - as.audioStart
        }.reduce(0, :+)
    end

    # Create business logic that calculates the average duration of each participant's contribution
    def averageTimeSpeaking
        self.totalTimeSpeaking / self.totalNumberUserSpeak
    end


end
