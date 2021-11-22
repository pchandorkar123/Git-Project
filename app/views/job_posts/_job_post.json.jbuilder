json.extract! job_post, :id, :description, :contact, :salary, :contractor_id, :created_at, :updated_at
json.url job_post_url(job_post, format: :json)
