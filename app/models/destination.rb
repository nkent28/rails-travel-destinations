class Destination < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :first_name, presence: true
  has_one_attached :photo
end

