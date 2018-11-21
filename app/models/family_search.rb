class FamilySearch < ActiveRecord::Base
  
  def self.increase surname
    search = find_all_by_name(surname).first || create(:name => surname)
    search.search_count = (search.search_count || 0) + 1
    search.save
  end
  
end
