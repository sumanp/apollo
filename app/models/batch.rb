class Batch < ApplicationRecord
  belongs_to :course
  has_many :enrollments
  has_many :students through: :enrollments

  def name
    self.course.title + " #{self.start_at}"
  end
end
