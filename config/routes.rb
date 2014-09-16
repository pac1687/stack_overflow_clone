Rails.application.routes.draw do
  root :to => 'questions#index'
  resources :questions do
    resources :answers, except: [:show, :index]
  end
  resources :users, except: [:index]
  resources :votes, except: [:show, :index]
  resources :sessions, :except => [:index, :edit, :update]
end
