json.array!(@education_tasks) do |education_task|
  json.extract! education_task, :id, :title, :description, :media, :due_date
  json.url education_task_url(education_task, format: :json)
end
