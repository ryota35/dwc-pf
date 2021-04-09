Rails.application.routes.draw do

  root to:  'homes#top'
  get '/about' => 'homes#about'

  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  }

  devise_for :users, controllers: {
  sessions: 'public/users/sessions',
  registrations: 'public/users/registrations',
  passwords: 'public/users/passwords'
  }

  scope module: :public do
    resources :users, only: [:show, :edit, :update]
    resources :quizzes, only: [:new, :create, :show]
    resources :articles
    resources :contacts, only: [:new, :create, :show]
    resources :searches, only: [:index]
  end

  namespace :admins do
    resources :articles, only: [:index, :show, :new, :create, :edit, :update]
    resources :quizzes, only: [:index, :create, :edit, :update]
    resources :contacts, only: [:index, :show]
  end

end