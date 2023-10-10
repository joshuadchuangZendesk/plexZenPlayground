json.extract! notification, :id, :description, :active, :conditions, :actions, :created_at, :updated_at
json.url notification_url(notification, format: :json)
