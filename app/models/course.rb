class Course < ApplicationRecord
  belongs_to :school
  has_many :batches, dependent: :destroy
  has_many :users, through: :batches, dependent: :destroy
end
