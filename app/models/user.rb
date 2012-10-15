class User < ActiveRecord::Base
  belongs_to :comment
  has_many :users
  attr_accessible :email, :name
end
