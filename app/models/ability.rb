class Ability
  include CanCan::Ability

  def initialize(user)

    can [:update, :destroy] Entry do |entry|
      entry.user == user
    end
  end
