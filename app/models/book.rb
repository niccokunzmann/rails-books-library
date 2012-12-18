require "maglev_base"

class Book
  include Maglev::Base
  debugger
  attr_accessible :author, :title, :comments

  validates :author, :presence => true
  validates :title,  :presence => true,
                     :length => { :minimum => 5 }

  # has_many :comments, :dependent => :destroy

  # has_one :lending

  def to_s
    title
  end

  def self.dummy
    b = Book.new
    b.title = "ab"
    b.author = "cd"
    b
  end
end
