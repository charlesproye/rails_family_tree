class Publication < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :title, presence: true
  validates :content, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_publi,
    against: [:title],
    associated_against: {
      user: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
