class User < ActiveRecord::Base
  belongs_to :comment

  has_many :lendings
  has_and_belongs_to_many :cities
  
  attr_accessible :email, :name

  def to_s
    name
  end

end
