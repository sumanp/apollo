# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

super_admin = User.create(email: 'superadmin@test.com', password: 'apple123', role: 'super_admin')
school_admin = User.create(email: 'schooladmin@test.com', password: 'apple123', role: 'school_admin')
student = User.create(email: 'student@test.com', password: 'apple123', role: 'student')
student_1 = User.create(email: 'student_1@test.com', password: 'apple123', role: 'student')
student_2 = User.create(email: 'student_2@test.com', password: 'apple123', role: 'student')
student_3 = User.create(email: 'student_3@test.com', password: 'apple123', role: 'student')
student_4 = User.create(email: 'student_4@test.com', password: 'apple123', role: 'student')

iim = School.create(name: "Indian Business School", description: "Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
iit = School.create(name: "IIT Bombay", description: "Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")


Course.create(title: "Data Science Intermediate", school_id: iim.id, description: "Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

Course.create(title: "Cryptography & Block-chain", school_id: iim.id, description: "Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

Course.create(title: "Data Science Intermediate", school_id: iit.id, description: "Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

Course.create(title: "Cryptography & Block-chain", school_id: iit.id, description: "Lorem ipsum dolor sit amet, 
  consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")