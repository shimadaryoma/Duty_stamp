class CreateOvertimes < ActiveRecord::Migration[6.1]
  def change
    create_table :overtimes do |t|
      t.datetime :overtime_start
      t.datetime :overtime_finish
      t.text :overtime_request

      t.timestamps
    end
  end
end
