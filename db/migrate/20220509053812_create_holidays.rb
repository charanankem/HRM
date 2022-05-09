class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :date
      t.string :year

      t.timestamps
    end
  end
end
