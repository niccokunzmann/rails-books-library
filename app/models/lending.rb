class Lending < ActiveRecord::Base
  attr_accessible :lendingDate, :book_id, :user_id
  belongs_to :user
  belongs_to :book

  validates :user, :presence => true
  validates :book, :presence => true

end
