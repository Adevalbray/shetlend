class Reservation < ApplicationRecord
  belongs_to :shetland
  belongs_to :user
  validates :duration, presence: true
end
