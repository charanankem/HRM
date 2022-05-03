class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :project_lead_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
