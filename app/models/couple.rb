class Couple < ApplicationRecord
  belongs_to :blood_user, class_name: "User", foreign_key: :blood_user_id
  belongs_to :out_user, class_name: "User", foreign_key: :out_user_id
  belongs_to :family
end
