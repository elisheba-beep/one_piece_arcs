# app/models/episode.rb
class Episode < ApplicationRecord
  belongs_to :arc

    # Ensure the presence of episode_number
    validates :episode_number, presence: true
end
