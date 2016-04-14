json.array!(@schedule_tasks) do |schedule_task|
  json.extract! schedule_task, :id, :title, :description, :media, :due_date
  json.url schedule_task_url(schedule_task, format: :json)
end
