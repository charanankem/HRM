class CreateEmployeeLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_leaves do |t|
      t.integer :leave_id
      t.integer :employee_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :confirmed_by
      t.string :status
      t.string :reason

      t.timestamps
    end
  end
end
