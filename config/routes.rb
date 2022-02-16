Rails.application.routes.draw do
  resources :trainers do
    resources :pokemons, only: :create
  end
  resources :pokemons, only: :destroy
end
