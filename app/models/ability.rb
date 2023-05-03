# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
      can :manage, :all
    elsif user.school_admin?
      can [:read, :update], School, user: user
      can :manage, Course, school: { user_id: user.id }
      can :manage, Batch, course: { school: { user_id: use.id } }
      can :manage, Enrollment
    else
      can :read, :all
      can :enroll, Enrollment
    end
  end
end
