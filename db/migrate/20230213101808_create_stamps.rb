class CreateStamps < ActiveRecord::Migration[6.1]
  def change
    create_table :stamps do |t|
      t.datetime :work_start
      t.datetime :work_finish 
      t.text :fix_request
      t.boolean :fix_status, default: true
    end
  end
end
