class DepartmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  attribute :faculty do |object|
    object.faculties.active.alphabetical.map do |faculty|
      FacultySerializer.new(faculty).serializable_hash 
    end
  end

  attribute :number_of_courses do |object|
    object.courses.uniq.count
  end

end
