Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'layouts#home'
  resources :calendars
end
