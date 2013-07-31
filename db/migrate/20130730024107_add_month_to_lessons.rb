class AddMonthToLessons < ActiveRecord::Migration
  def change
  	  add_column :lessons, :month, :string
  end
end
