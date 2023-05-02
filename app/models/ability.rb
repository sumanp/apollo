# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin?
      can :manage, :all
    elsif user.school_admin?
      can :update, School, user: user
      can :manage, Course
    else
      can :read, :all
    end
  end
end
