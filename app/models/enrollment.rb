class Enrollment < ApplicationRecord
    belongs_to :user, primary_key: :id, foreign_key: :user_id
    belongs_to :course, primary_key: :code, foreign_key: :course_code
end
