class Post < ApplicationRecord

  validates :title, presence: true, uniqueness: true, length: { minimum: 5, maximum: 25 }
  validates :description, presence: true, length: { minimum: 5, maximum: 200 }
  validates :slug, presence: true, uniqueness: true, length: { minimum: 1, maximum: 25 }
  validates :menu_label, presence: true, uniqueness: true, length: { minimum: 1, maximum: 50 }
  validates :h1, presence: true, uniqueness: true, length: { minimum: 5, maximum: 50 }
  validates :content, presence: true, length: { minimum: 10, maximum: 1200 }
  validates :priority, presence: true, numericality: { minimum: 1, maximum: 10 }
  validates :published_at, presence: true,
              date: { after: Proc.new { Time.now - 1.year},
                      before: Proc.new { Time.now + 1.year } }

  scope :published, -> { where('published_at <= NOW()') }
  scope :unpublished, -> { where('published_at > NOW()') }

  def to_param
    slug
  end

  def published
    @posts = Post.published
  end

  def unpublished
    @posts = Post.unpublished
  end
end
