class Quiz < ApplicationRecord
  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  def correct_answer_text
    send("answer_#{correct_answer}")
  end
end
