class Book < ApplicationRecord
  validates :title, :author, :isbn, presence: true
  validates :isdn, uniqueness: true
end
