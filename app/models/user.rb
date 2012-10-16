class User < ActiveRecord::Base
  belongs_to :comment

  has_many :lendings
  attr_accessible :email, :name

  def to_s
    name
  end

end
