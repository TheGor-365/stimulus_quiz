Rails.application.routes.draw do
  devise_for :users
  root "quizzes#index"

  get 'quiz_submissions/create'
  get 'quiz_submissions/show'
  
  resources :quizzes do
    resources :questions
    resources :quiz_submissions, only: [:show, :create], as: 'submissions'
  end
end
