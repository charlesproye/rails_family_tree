class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :family
  has_many :publications
  has_ancestry
  has_many :couple_out, class_name: "Couple", foreign_key: :blood_user_id
  has_many :couple_blood, class_name: "Couple", foreign_key: :out_user_id
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :city, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_job_first_last,
    against: [:job, :first_name, :last_name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
