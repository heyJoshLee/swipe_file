class User < ApplicationRecord
  has_many :comments
  has_secure_password
  has_many :posts
  before_create :slugify


  validates :username, length: { minimum: 2, maximum: 10}
  validates :email, length: { minimum: 2, maximum: 10}
  validates_uniqueness_of :email, case_sensitive: false
  validates_uniqueness_of :username, case_sensitive: false

  def slugify
    self.slug = title.parameterize 
  end

  def to_param
    slug
  end
end