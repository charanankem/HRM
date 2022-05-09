class CreateProjectsManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_managements do |t|
      t.string :project_name
      t.string :client
      t.integer :manager_id
      t.string :description
      t.time :client_time_zone
      t.string :shift_information
      t.string :project_type
      
      t.timestamps
    end
  end
end
 