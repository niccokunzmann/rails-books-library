class Lending < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  attr_accessible :lendingDate

  validates :user, :presence => true
  validates :book, :presence => true
end
