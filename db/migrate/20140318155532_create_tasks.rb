class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :complete
      t.integer "list_id"
      t.datetime :due_date

      t.timestamps
    end
    add_index("tasks", "list_id")
  end
end
