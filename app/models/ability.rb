# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
      can :manage, :all
    elsif user.school_admin?
      can :manage, School, user: user
      can :manage, Course
      can :manage, Batch
      can :manage, Enrollment
    else
      can :read, :all
      can :manage, Enrollment
    end
  end
end
