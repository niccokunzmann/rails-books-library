class Book < ActiveRecord::Base
  attr_accessible :author, :title

  validates :author, :presence => true
  validates :title,  :presence => true,
                     :length => { :minimum => 5 }

  has_many :comments
end
