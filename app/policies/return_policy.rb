class ReturnPolicy < ApplicationPolicy

  def index?
    user.roles == 'manager'
  end 

  def show?
    user.roles == 'manager' || user.roles == 'customer' || user.roles == 'cashier'
  end 

  def new?
    user.roles == 'manager' || user.roles == 'customer' || user.roles == 'cashier'
  end 

  def create? 
    user.roles == 'manager' || user.roles == 'customer' || user.roles == 'cashier'
  end 

  class Scope < Scope
  end
end
