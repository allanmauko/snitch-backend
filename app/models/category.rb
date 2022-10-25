class Category < ApplicationRecord
  belongs_to :user
  has_many :article

  validates :name, presence: true
end
