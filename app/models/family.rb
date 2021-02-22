class Family < ApplicationRecord
  has_many :users
  has_many :couples
  has_one_attached :photo
  validates :name, presence: true
end
