class CreateOvertimes < ActiveRecord::Migration[6.1]
  def change
    create_table :overtimes do |t|
      t.integer :overtime_start_month
      t.integer :overtime_start_day
      t.integer :overtime_start_hour
      t.integer :overtime_start_minute
      t.integer :overtime_finish_month
      t.integer :overtime_finish_day
      t.integer :overtime_finish_hour
      t.integer :overtime_finish_minute
      t.text :overtime_request
      t.integer :enployee_id
      t.boolean :admit_status
    end
  end
end
