module Contexts
  module Faculties
    def create_faculties
      @profq  = FactoryBot.create(:faculty, department: @is)
      @koz    = FactoryBot.create(:faculty, department: @cs, first_name: "David", last_name: "Kosbie")
      @kaufer = FactoryBot.create(:faculty, department: @english, first_name: "David", last_name: "Kaufer", active: false)
      @profh  = FactoryBot.create(:faculty, department: @is, first_name: "Larry", last_name: "Heimann")

      # in alphabetical order, they would be:
      # @kaufer = FactoryBot.create(:faculty, department: @english, first_name: "David", last_name: "Kaufer", active: false)
      # @koz    = FactoryBot.create(:faculty, department: @cs, first_name: "David", last_name: "Kosbie")
      # @profq  = FactoryBot.create(:faculty, department: @is)
    end
    
  end
end