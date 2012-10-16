class Book < ActiveRecord::Base
  attr_accessible :author, :title, :comments

  validates :author, :presence => true
  validates :title,  :presence => true,
                     :length => { :minimum => 5 }

  #validates :lending, :allow_nil => true 

  has_many :comments, :dependent => :destroy

  has_one :lending

  def to_s
    title
  end

end
