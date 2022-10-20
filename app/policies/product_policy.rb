class ProductPolicy < ApplicationPolicy

  def index?
    user.roles == 'manager' || user.roles == 'cashier' || user.roles == 'customer'
  end 

  def show?
    user.roles == 'manager' || user.roles == 'cashier' || user.roles == 'customer'
  end 

  def new?
    user.roles == 'manager'
  end 

  def create? 
    user.roles == 'manager'
  end 

  def edit?
    user.roles == 'manager'
  end 

  def update? 
    user.roles == 'manager'
  end 

  def destroy? 
    user.roles == 'manager'
  end 

  class Scope < Scope
  end
end
