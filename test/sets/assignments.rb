module Contexts
  module Assignments
    def create_assignments
      @a1 = FactoryBot.create(:assignment, course: @is250, faculty: @profq)
      @a2 = FactoryBot.create(:assignment, course: @is373, faculty: @profq)
      @a3 = FactoryBot.create(:assignment, course: @is272, faculty: @profh)
      @a4 = FactoryBot.create(:assignment, course: @is373, faculty: @profh)
      @a5 = FactoryBot.create(:assignment, course: @cs112, faculty: @koz)
    end
  end
end