class AddTasksToLessons < ActiveRecord::Migration
  def change
  	  	  add_column :lessons, :first_ressource_task, :string
  	  	  add_column :lessons, :second_ressource_task, :string
  	  	  add_column :lessons, :third_ressource_task, :string
  	  	  add_column :lessons, :fourth_ressource_task, :string
  	  	  add_column :lessons, :fifth_ressource_task, :string
  end
end
