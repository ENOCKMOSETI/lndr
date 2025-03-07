class Book < ApplicationRecord
  has_many :borrowings
  has_many :borrowers, through: :borrowings, source: :user

  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true, uniqueness: true
end
