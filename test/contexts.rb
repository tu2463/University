# require needed files that have the modules
require './test/sets/departments'
require './test/sets/faculties'
require './test/sets/courses'
require './test/sets/assignments'

module Contexts
  # explicitly include all sets of contexts used for testing 
  include Contexts::Departments
  include Contexts::Faculties
  include Contexts::Courses
  include Contexts::Assignments
  
  def create_all
    puts "Building context..."
    create_departments
    puts "Built departments"
    create_faculties
    puts "Built faculties"
    create_courses
    puts "Built courses"
    create_assignments
    puts "Built assignments"

  end
  
end