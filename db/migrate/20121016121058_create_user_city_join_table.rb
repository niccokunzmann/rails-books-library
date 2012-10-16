class CreateUserCityJoinTable < ActiveRecord::Migration
  def up
    create_table "users_cities", :id => false do |t|
      t.column "user_id", :integer, :null => false
      t.column "city_id", :integer, :null => false
    end
  end

  def down
  end
end
