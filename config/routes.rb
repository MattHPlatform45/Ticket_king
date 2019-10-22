Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  devise_for :users do
    get '/users/sign_out' => 'users/sessions#destroy', :method => :delete
    get '/users/sign_up' => 'users/registrations#new'
  end
  resources :events do
    resources :tickets
  end
  resources :categories
end
