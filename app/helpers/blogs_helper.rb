module BlogsHelper
  include ActionView::Helpers::DateHelper

  def formatted_blog_date(blog)
    if blog.created_at>=6.days.ago
      "#{time_ago_in_words(blog.created_at)} ago"
    else
      blog.created_at.strftime("%B %d, %Y")
    end
  end
end
