class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    # can :read, Group

    return unless user.present?

    can :manage, Group, user_id: user.id
    can :manage, Operation, author_id: user.id

    return unless user.admin?

    can :manage, :all
  end
end
