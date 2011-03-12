module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper

  def highlight_search_hit(hit)
    hit.highlights.map do |hl|
      hl.format do |word|
        "<strong>#{word}</strong>"
      end
    end.join(' &hellip; ').html_safe
  end
end
