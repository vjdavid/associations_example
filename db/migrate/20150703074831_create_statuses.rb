class CreateStatuses < ActiveRecord::Migration
  def change
    drop_table :people_tasks
    create_table :statuses do |t|
      t.integer :task_id
      t.integer :person_id
      t.string :status

      t.timestamps null: false
    end
  end
end
