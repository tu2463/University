module Contexts
  module Faculties

    def create_faculties
      @f1 = FactoryBot.create(:faculty, department: @is, first_name: "Ff1", last_name: "Fl1", rank: "Professor", active: true)
      @f2 = FactoryBot.create(:faculty, department: @cs, first_name: "Ff2", last_name: "Fl2", rank: "Associate Professor", active: true)
      @f3 = FactoryBot.create(:faculty, department: @business, first_name: "Ff3", last_name: "Fl3", rank: "Assistant Professor", active: false)
    end
    
    def destroy_faculties
      @f1.delete
      @f2.delete
      @f3.delete
    end
  end
end