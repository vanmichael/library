class AddDefaultToRating < ActiveRecord::Migration
  def up
  	change_column :books, :rating, :integer, default: 0
  end

  def down
 	change_column :books, :rating, :integer
  end
end
