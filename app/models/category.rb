class Category < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :name, presence: true
end
