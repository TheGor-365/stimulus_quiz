json.extract! question, :id, :quiz_id, :content, :answer_1, :answer_2, :answer_3, :answer_4, :correct_answer, :created_at, :updated_at
json.url question_url(question, format: :json)
