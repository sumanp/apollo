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
end
