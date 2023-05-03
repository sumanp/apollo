class School < ApplicationRecord
  has_many :school_admins, dependent: :destroy
  has_many :users, through: :school_admins
  has_many :courses, dependent: :destroy
end
