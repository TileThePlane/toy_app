class User < ApplicationRecord
  has_many :microposrs
  validates name, presence: true
end
