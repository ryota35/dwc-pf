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
    resources :articles
    resources :users, only: [:show, :edit, :update]
    resources :quizzes, only: [:new, :create, :show]
    resources :contacts, only: [:new, :create, :show]
    resources :searches, only: [:index]
    resources :favorites, only: [:create, :destroy]
  end

  namespace :admins do
    resources :articles
    resources :quizzes, only: [:index, :create, :edit, :update, :destroy]
    resources :contacts, only: [:index, :show]
  end

end