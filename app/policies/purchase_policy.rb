class PurchasePolicy < ApplicationPolicy

  def index?
    user.roles == 'manager'
  end 

  def new?
    user.roles == 'manager' || user.roles == 'cashier'
  end 

  def create? 
    user.roles == 'manager' || user.roles == 'cashier'
  end 

  def total? 
    user.roles == 'manager' || user.roles == 'cashier'
  end 

  def new_search?
    user.roles == 'manager'
  end 

  def search_date? 
    user.roles == 'manager'
  end 

  class Scope < Scope
  end
end
