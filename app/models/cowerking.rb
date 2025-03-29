class Cowerking < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price_per_day, presence: true
  validates :photo, presence: true
end
