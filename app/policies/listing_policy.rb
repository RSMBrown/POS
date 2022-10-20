class ListingPolicy < ApplicationPolicy

  attr_reader :user, :listing

  def initialize(user, listing)
    @user = user
    @listing = listing
  end

  def show?
    user.roles == 'manager'
  end

  def edit?
    user.roles == 'manager'
  end

  def update?
    user.roles == 'manager'
  end

  class Scope < Scope
  end
end
