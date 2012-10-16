class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.references :user
      t.references :book
      t.date :lendingDate

      t.timestamps
    end
    add_index :lendings, :user_id
    add_index :lendings, :book_id
  end
end
