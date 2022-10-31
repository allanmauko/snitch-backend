class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :value, :number_of_likes, :image_url, :created_at

  has_many :comments
end