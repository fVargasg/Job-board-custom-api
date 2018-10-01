class PostingSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster, :category, :location, :status, :description, :created_at, :user_id, :editable

  def editable
    scope == object.user
  end
end
