require "maglev_record"
class Comment
  include MaglevRecord::Base
  #belongs_to :book
  attr_accessor :body, :commenter
end
