require 'test_helper'

class FamilySearchTest < ActiveSupport::TestCase

  test "create new surname" do
    FamilySearch.increase "silva"
    assert_equal FamilySearch.last.search_count, 1
  end
  
  test "increase a existing surname" do
    family = family_searches(:guzenski)
    FamilySearch.increase "guzenski"
    assert_equal FamilySearch.last.search_count, family.search_count + 1
  end

end
