module ProductCommentsHelper
  
  def comment_url_for path
    "#{path}?comment='true'#comments"
  end
  
end
