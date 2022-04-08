class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    true
   record.user == user
  end

  def create?
    true
    record.user == user
  end

  def destroy?
    true
  end
end
