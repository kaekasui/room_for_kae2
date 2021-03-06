class Blog < ActiveRecord::Base

  has_many :blog_comments

  default_scope { order("created_at DESC") }
  default_scope { where(draft: false) }

  scope :recent_blogs, -> { limit(5) }
end
