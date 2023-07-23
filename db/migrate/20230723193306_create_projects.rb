class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :due_date
      t.boolean :on_time
      t.integer :team_id

      t.timestamps
    end
  end
end
