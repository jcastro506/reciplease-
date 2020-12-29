class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :author, :description, :image_url
  has_many :ingredients
end
