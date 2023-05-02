class Batch < ApplicationRecord
  belongs_to :course

  def name
    self.course.title + " #{self.start_at}"
  end
end
