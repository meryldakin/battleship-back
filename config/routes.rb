Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/boards/1', to: 'boards#update_board'  
  resources :games, :users, :boards

end
