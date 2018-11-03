class Course < ApplicationRecord
    has_many :course_subjects, primary_key: 'code', foreign_key: 'course_code'
    has_many :subjects, through: :course_subjects
    has_many :enrollments, primary_key: 'code', foreign_key: 'course_code'
    has_many :users, through: :enrollments

    def self.search (name, subject_id)
        if name.nil? && subject_id.blank?
            all
        else 
            if !subject_id.blank? && !name.nil? 
                all.where('name LIKE ?', "%#{name}%") & Subject.where('subject_id LIKE ?', "%#{subject_id}%").first.courses
            elsif name.nil? 
                Subject.where('subject_id LIKE ?', "%#{subject_id}%").first.courses
            else
                all.where('name LIKE ?', "%#{name}%")
            end
        end 
    end
end