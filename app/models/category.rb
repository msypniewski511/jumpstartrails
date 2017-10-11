class Category < ApplicationRecord
  #attr_accessor :title, :slug, :description
  has_many :posts
end
