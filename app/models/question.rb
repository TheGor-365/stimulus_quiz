class Question < ApplicationRecord
  belongs_to :quiz
  validates :correct_answer, inclusion: { 1..4 }
  has_one_attached :image
end
