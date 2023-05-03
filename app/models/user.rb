class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :schools
  has_many :batches
  has_many :entrollments
  has_many :batches, through: :enrollments

  ROLES = %w{super_admin school_admin student}

  ROLES.each do |role_name|
    define_method "#{role_name}?" do
      role == role_name
    end
  end

  def enrolled?(batch)
    enrollment = batch.enrollments.where(user_id: self.id).last
    return true if batch.users.where(id: self.id).present? && enrollment.present? && enrollment.approval
    false
  end

  def pending_enrollment_approval?(batch)
    enrollment = batch.enrollments.where(user_id: self.id).last
    return true if enrollment.present? && !enrollment.approval
    false
  end
end
