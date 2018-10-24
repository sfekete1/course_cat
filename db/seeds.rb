# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create array of hashes and add the key values to my db 
parsed = JSON.parse(File.read("public/course.json")); 0
courses = []
courseSubjects = []
parsed.each do |course|
    courses << {
        name: course["name"],
        code: course["code"],
        description: course["description"]
    }
    course["subjects"].each do |subject|
        courseSubjects << {
            course_code: course["code"],
            subject_id: subject["id"]
        }
    end
end

parsed = JSON.parse(File.read("public/subject.json")); 0
subjects= []
parsed.each do |subject|
    subjects << {
        name: subject["name"],
        abbreviation: subject["abbreviation"],
        subject_id: subject["id"]
    }
end

parsed = JSON.parse(File.read("public/instructor.json")); 0
instructors = []
parsed.each do |instructor|
    instructors << {
        instructor_id: instructor["id"],
        first: instructor["first"],
        middle: instructor["middle"],
        last: instructor["last"],
        email: instructor["email"]
    }      
end


Course.import courses
Instructor.import instructors
Subject.import subjects
CourseSubject.import courseSubjects