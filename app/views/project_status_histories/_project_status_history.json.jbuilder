json.extract! project_status_history, :id, :status, :user_id, :project_id, :created_at, :updated_at
json.url project_status_history_url(project_status_history, format: :json)
