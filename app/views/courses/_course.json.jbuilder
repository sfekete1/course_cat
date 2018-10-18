json.extract! course, :id, :identifier, :comment, :term, :code, :continuity_id, :name, :description, :credits, :independent_study, :requirements, :subjects, :created_at, :updated_at
json.url course_url(course, format: :json)
