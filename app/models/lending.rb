class Lending < ActiveRecord::Base
  attr_accessible :lendingDate, :user, :book, :book_id, :user_id
  belongs_to :user
  belongs_to :book

  validates :user, :presence => true
  validates :book, :presence => true

end
