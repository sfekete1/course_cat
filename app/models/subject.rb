class Subject < ApplicationRecord
    has_many :course_subjects, primary_key: 'subject_id', foreign_key: 'subject_id'
    has_many :courses, through: :course_subjects
end
