class Industry < ApplicationRecord
  before_create :slugify
  has_many :posts

  def slugify
    self.slug = name.parameterize 
  end

  def to_param
    slug
  end
end