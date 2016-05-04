Rails.application.routes.draw do
  resources :users
  resources :usergambles
  resources :coin_flips
  root 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'gamble' => 'static_pages#gamble'

  get 'about' => 'static_pages#about'

end
