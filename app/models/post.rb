class Post < ApplicationRecord
  #attr_accessor :title, :slug, :blurb, :content, :category_id
  belongs_to :category
  scope :rails, -> { where(category_id: 1) }
end
