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

  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/users/sessions#guest_sign_in'
  end

  scope module: :public do
    resources :articles do
      resources :comments, only: [:create, :destroy]
    end
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