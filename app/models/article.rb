class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    paginates_per 10
  end
  