class Post < ApplicationRecord

  scope :published, -> { where('published_at <= NOW()') }
  scope :unpublished, -> { where('published_at > NOW()') }

  def to_param
    slug
  end
end
