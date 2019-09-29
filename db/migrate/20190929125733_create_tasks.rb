class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :started_at
      t.datetime :finished_at
      t.boolean :is_allday
      t.boolean :is_done

      t.timestamps
    end
  end
end
