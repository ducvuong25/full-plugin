class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :department_name
      t.string :department_manager_name
      t.integer :department_floor
    end
  end
end
