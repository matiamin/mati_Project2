class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Entry

  # this should be indented!
  if user
      can :create, Entry
      can [:update, :destroy], Entry, :user => user
  end
  end
end
