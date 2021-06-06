class Industry < ApplicationRecord
  before_create :slugify
  has_many :posts
  def slugify
    self.slug = name.parameterize 
  end
end