class Lending 
  include MaglevRecord::Base
  attr_accessor :lendingDate, :user, :book, :book_id, :user_id
  

  validates :user, :presence => true
  validates :book, :presence => true

end
