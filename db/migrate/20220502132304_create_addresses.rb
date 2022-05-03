class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :pincode
      t.string :country
      t.integer :employee_id


      t.timestamps
    end
  end
end
