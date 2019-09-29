class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, default: ''
      t.text :description, default: ''
      t.datetime :started_at
      t.datetime :finished_at
      t.boolean :is_allday, default: false
      t.boolean :is_done, default: false

      t.timestamps
    end
  end
end
