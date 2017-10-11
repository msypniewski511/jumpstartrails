class Page < ApplicationRecord
  #attr_accessor :title, :slug, :blurb, :content
  validates :title, presence: true, length: { minimum: 5 }
  validates :slug, presence: true, format: { with: /\A[a-zA-Z-]+\z/, message: "Only letters allowed" }
  validates :content, presence: true, length: { minimum: 100 }
end
