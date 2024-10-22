# app/models/arc.rb
class Arc < ApplicationRecord
  has_many :episodes, dependent: :destroy
end
