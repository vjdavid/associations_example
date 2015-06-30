class CreatePeopleTasks < ActiveRecord::Migration
  def change
    create_table :people_tasks, id: false do |t|
      t.belongs_to :task, index: true
      t.belongs_to :person, index: true
    end
  end
end
