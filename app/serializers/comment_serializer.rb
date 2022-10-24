class CommentSerializer < ActiveModel::Serializer
  attributes :id, :value, :article_id, :updated_at
end
