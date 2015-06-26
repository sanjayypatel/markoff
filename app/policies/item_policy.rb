class ItemPolicy < ApplicationPolicy

  def show?
    user.present? && record.user == user
  end

  def create?
    show?
  end

  def destroy?
    show?
  end

end