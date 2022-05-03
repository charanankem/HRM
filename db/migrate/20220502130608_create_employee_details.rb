class CreateEmployeeDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_details do |t|
      t.string :contact_no
      t.string :emergency_contact_no
      t.integer:designation_id
      t.integer:employee_id
      t.integer:manager_id
      t.string :blood_group
      t.integer:work_experience

      t.timestamps
    end
  end
end
