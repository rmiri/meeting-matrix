class User < ApplicationRecord
    has_many :audio_segments
    # has_many :conferences, through: :audio_segment
    has_many :conferences
    has_many :conferences, through: :audio_segment, source: :audio_segment_table_foreign_key_to_conferences_table

    # Create business logic that calculates how many times a participant speaks during a call
    def totalNumberUserSpeak
        self.audio_segments.length
    end

    # Total amount of time the user spoke
    def totalTimeSpeaking
        self.audio_segments.map{|as| 
            totalSegment = as.audioEnd - as.audioStart
        }.reduce(0, :+)
    end

    # Create business logic that calculates the average duration of each participant's contribution
    def averageTimeSpeaking
        total = self.totalTimeSpeaking / self.totalNumberUserSpeak
        total.round()

        # should add logic if time is creater than 1 min
    end


end
