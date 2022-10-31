class CommentSerializer < ActiveModel::Serializer
  attributes :id, :value, :article_id, :updated_at

  belongs_to :article
end