class User < ActiveRecord::Base
  belongs_to :comment

  has_many :lendings
  has_and_belongs_to_many :cities, :join_table => "users_cities"
  
  attr_accessor :email, :name

  def to_s
    name
  end

end
