class Vote < ApplicationRecord
  belongs_to :votetable, polymorphic: true
end