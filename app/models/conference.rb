class Conference < ApplicationRecord
    has_many :audio_segments 
    has_many :users, through: :audio_segment
    has_many :users

    

end
