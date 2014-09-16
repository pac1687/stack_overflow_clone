Rails.application.routes.draw do
  root :to => 'questions#index'
  resources :questions
  resources :users, except: [:index]
  resources :answers, except: [:show, :index]
  resources :votes, except: [:show, :index]
  resources :sessions, :except => [:index, :edit, :update]
end
