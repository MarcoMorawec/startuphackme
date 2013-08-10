class AddCuratorOrganizationAndDescriptionToLessons < ActiveRecord::Migration
  def change
  	  add_column :lessons, :curator_organization, :string
  	  add_column :lessons, :description, :text  	  
  end
end
