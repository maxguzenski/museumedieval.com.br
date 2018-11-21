module ClientSearchesHelper
  
  def clint_search_continue_link
    link_to t(:'client_searches.continue'), new_client_search_url(:term => true), 
        :style => "font-size:180%", :id => 'btn_continue', 
        :onclick => "if (!$('#know_law').is(':checked')) { alert('#{t(:'client_searches.index.alert')}'); return false;} " 
  end
  
  
end
