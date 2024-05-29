json.extract! notice, :id, :title, :content, :image, :created_at, :updated_at
json.url notice_url(notice, format: :json)
