class CommentSerializer < ActiveModel::Serializer
  attributes :id, :value, :article_id, :user_id
end
