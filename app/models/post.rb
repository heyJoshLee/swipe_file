class Post < ApplicationRecord
  belongs_to :user
  belongs_to :type
  belongs_to :industry
  has_many :comments
  has_many :votes, as: :voteable

  before_create :slugify

  has_rich_text :body

  validates :title, uniqueness: true, length: { minimum: 5, maximum: 280 }
  validates :body, length: { minimum: 5, maximum: 5000 }
  validates :industry_id, presence: true
  validates :type_id, presence: true
  
  
  def slugify
    self.slug = title.parameterize 
  end

  def to_param
    slug
  end
end