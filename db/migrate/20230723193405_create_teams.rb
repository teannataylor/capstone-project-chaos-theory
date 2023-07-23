class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :department
      t.integer :size

      t.timestamps
    end
  end
end
