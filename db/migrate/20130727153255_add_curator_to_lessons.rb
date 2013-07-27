class AddCuratorToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :curator, :string
  end
end
