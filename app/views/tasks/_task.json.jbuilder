json.extract! task, :id, :name, :description, :started_at, :finished_at, :is_allday, :is_done, :created_at, :updated_at
json.url task_url(task, format: :json)
