class SchoolAdmin < ApplicationRecord
  belongs_to :school
  belongs_to :user
end
