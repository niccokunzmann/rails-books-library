class City < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => "users_cities"
  attr_accessor :name, :postal
end
