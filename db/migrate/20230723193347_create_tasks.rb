class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.string :status
      t.integer :employee_id
      t.integer :project_id

      t.timestamps
    end
  end
end
