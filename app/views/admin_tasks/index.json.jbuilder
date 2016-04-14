json.array!(@admin_tasks) do |admin_task|
  json.extract! admin_task, :id, :title, :description, :media, :due_date
  json.url admin_task_url(admin_task, format: :json)
end
