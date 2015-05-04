class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.timestamps
      t.datetime :completed_at
      t.string :name
      t.integer :priority
    end
  end
end
