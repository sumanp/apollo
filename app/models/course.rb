class Course < ApplicationRecord
  belongs_to :school
  has_many :batches
  has_many :users, through: :batches
end
