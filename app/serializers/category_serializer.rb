class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :article_id
end
