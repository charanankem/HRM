class CreateEmployeesProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :employees_projects do |t|
      t.integer :employee_id
      t.integer :project_id


      t.timestamps
    end
  end
end
