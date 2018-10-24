class CourseSubject < ApplicationRecord
    belongs_to :subject, primary_key: :subject_id, foreign_key: :subject_id
    belongs_to :course, primary_key: :code, foreign_key: :course_code
end
