class Article < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :bookmarks
    has_many :comments
    # has_many :likes

    #validations
    validates :value, length: { minimum: 20 }
    validates :title, presence: { message: "title must be given please" }
end