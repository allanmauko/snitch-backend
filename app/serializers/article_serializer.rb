class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :value, :number_of_likes, :image_url, :updated_at
end
