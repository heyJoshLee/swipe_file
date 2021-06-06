class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :votes, as: :voteable

  validates :body, length: { minimum: 5, maximum: 5000}

end