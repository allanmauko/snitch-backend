class Article < ApplicationRecord
    belongs_to :author
    belongs_to :category
    has_many :bookmarks
    has_many :comments
    has_many :likes
    has_many :users, through: :likes

    #validations
    validates :bio, length: { minimum: 20 }
end
