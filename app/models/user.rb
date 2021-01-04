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
end
