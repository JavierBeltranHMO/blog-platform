class BlogPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
    def update?
      user.admin? || record.user==user
    end

    def destroy?
      user.admin? || record.user==user
    end

    def create?
      user.present?
    end

    def new?
      create?
    end

    def edit?
      update?
    end

    def index?
      true
    end
    def show?
      true
    end
end
