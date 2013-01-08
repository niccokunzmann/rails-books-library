require "maglev_record"

class Book
  include Maglev::Base
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
    Book.new(:title => "cd", :author => "ab")
  end
end
