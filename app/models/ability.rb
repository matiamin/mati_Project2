class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Entry

  if user
      can :create, Entry
      can [:update, :destroy], Entry, :user => user
  end
  end
end
