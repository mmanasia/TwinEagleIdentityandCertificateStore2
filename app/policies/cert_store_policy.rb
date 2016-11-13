class CertStorePolicy < ApplicationPolicy

  def new?
    user.user_group_id == 3
  end

  def update?
    user.user_group_id == 3
  end

  def create?
    user.user_group_id == 3
  end

  def destroy?
    user.user_group_id == 3
  end

end