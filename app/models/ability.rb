# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
      can :manage, :all
    elsif user.school_admin?
      can [:read, :update], School
      can :manage, Course
      can :manage, Batch
      can :manage, Enrollment
    else
      can :read, :all
      can :enroll, Enrollment
    end
  end
end
