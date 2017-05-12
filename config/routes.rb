Rails.application.routes.draw do
  resources :users, :boards, :sessions
end
