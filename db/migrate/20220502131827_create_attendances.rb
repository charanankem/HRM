class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.datetime :login
      t.datetime :logout
      t.string :reason
      t.integer :employee_id

      t.timestamps
    end
  end
end
