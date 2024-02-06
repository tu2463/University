require "test_helper"

class FacultyTest < ActiveSupport::TestCase
  # Matchers
  should belong_to(:department)
  should have_many(:assignments)
  should have_many(:courses).through(:assignments)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)

  should allow_value("Assistant Professor").for(:rank)
  should allow_value("Associate Professor").for(:rank)
  should allow_value("Professor").for(:rank)
  should_not allow_value("AssociateProfessor").for(:rank)
  should_not allow_value("Professo").for(:rank)

  # Context
  context "Given context" do
    setup do 
      # build the testing context here...
      create_departments
      create_faculties
    end

    teardown do
      # destroy_departments
      # destroy_faculties
    end

    # with that testing context, write your tests...
    should "order faculties alphabetically" do
      assert_equal ["Ff1", "Ff2", "Ff3"], Faculty.alphabetical.map{|a| a.first_name}
      assert_equal ["Professor", "Associate Professor", "Assistant Professor"], Faculty.alphabetical.map{|a| a.rank}
    end
    

  end
end
