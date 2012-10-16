class User < ActiveRecord::Base
  belongs_to :comment
  has_many :users
  has_many :lendings
  attr_accessible :email, :name
end
