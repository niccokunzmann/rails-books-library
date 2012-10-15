class ChangeUserCommentReference < ActiveRecord::Migration
  def up
    remove_column :users, :comment_id
    add_column :comments, :user_id, :integer
  end

  def down
  end
end
