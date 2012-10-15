class City < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :postal
end
