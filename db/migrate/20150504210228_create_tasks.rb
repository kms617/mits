class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.timestamps
      t.datetime :completed_at
      t.string :name
    end
  end
end
