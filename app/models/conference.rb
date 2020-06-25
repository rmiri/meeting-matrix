class Conference < ApplicationRecord
    has_many :audio_segments
    # has_many :users, through: :audio_segment
    has_many :users
    has_many :users, through: :audio_segment, source: :audio_segment_table_foreign_key_to_users_table

    # I had some issues with the relationship in my db, I wasn't able to access users from a conference, so I decided to write my own method.
    def allUsers
       self.audio_segments.map{|as| as.user} 
    end


    # to return only one instance of each user, so I can use in the other methods
    def userUnique
        self.allUsers.uniq
    end

    # Create business logic that calculates how many times a participant speaks during a call
    def hashUserUniqueSpeak
        hash = {}
        self.userUnique.map{ |user|
            times = user.totalNumberUserSpeak
            hash[user.name] =  times
        }
        hash
    end


    # Create business logic that calculates the average duration of each participant's contribution
    def hashAverageUser
        hash = {}
        self.userUnique.map{|user|
            average = user.averageTimeSpeaking()
            hash[user.name] = average
        }
        hash
    end

    # Create business logic that calculates who contributes the most and least to a call
    def biggestContributor
        self.hashAverageUser.max_by{|key,value| value}  
    end
    def leastContributor
        self.hashAverageUser.min_by{|key,value| value} 
    end

    # Filter


end
