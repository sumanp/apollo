class Batch < ApplicationRecord
  belongs_to :course
  has_many :enrollments
  has_many :students, through: :enrollments

  validates_presence_of :start_at, :end_at

  def name
    self.course.title + " #{self.start_at}"
  end
end
