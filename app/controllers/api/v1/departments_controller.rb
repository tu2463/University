module Api::V1
  class DepartmentsController < ApiController

    def index
      @departments = Department.active.alphabetical.all
      render json: DepartmentSerializer.new(@departments).serialized_json
    end
    
  end

end