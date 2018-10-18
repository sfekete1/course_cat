json.extract! subject, :id, :identifier, :comment, :term, :name, :abbreviation, :segments, :created_at, :updated_at
json.url subject_url(subject, format: :json)
