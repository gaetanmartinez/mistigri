class Card < ApplicationRecord
  has_one :user, through: games
  validates :number, presence: true
end
