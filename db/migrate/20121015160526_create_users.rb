class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.references :comment
      t.string :name

      t.timestamps
    end
    add_index :users, :comment_id
  end
end
