Rails.application.routes.draw do
  devise_for :users
  root "quizzes#index"

  resources :quizzes do
    resources :questions
    resources :quiz_submissions, only: [:show, :create], as: 'submissions'
  end
end
