json.array!(@eeducation_tasks) do |eeducation_task|
  json.extract! eeducation_task, :id, :title, :description, :media, :due_date, :complete
  json.url eeducation_task_url(eeducation_task, format: :json)
end
