class Comment < ActiveRecord::Base
  belongs_to :book
  attr_accessor :body, :commenter
end
