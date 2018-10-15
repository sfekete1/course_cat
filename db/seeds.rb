# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create array of hashes and add the key values to my db 

courseParse = JSON.parse(File.read("public/course.json")); 0
subjectParse = JSON.parse(File.read("public/subject.json")); 0
instructorParse = JSON.parse(File.read("public/instructor.json")); 0
#b = JSON.parse(File.read("public/instructor.json")); 0
#c = JSON.parse(File.read("public/subject.json")); 0
courseParse.each {|line| line['identifier']= line.delete('id')}
subjectParse.each {|line| line['identifier']= line.delete('id')}
instructorParse.each {|line| line['identifier']= line.delete('id')}
Course.import courseParse, validate:false
Instructor.import instructorParse, validate:false
Subject.import subjectParse, validate:false



#next populate all the other databases for subject and instructor