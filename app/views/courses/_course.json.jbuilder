json.extract! course, :id, :title, :description, :school_id, :created_at, :updated_at
json.url course_url(course, format: :json)
