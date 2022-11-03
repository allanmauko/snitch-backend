class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :value, :article_id

  belongs_to :article
end