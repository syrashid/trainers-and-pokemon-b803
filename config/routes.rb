Rails.application.routes.draw do
  resources :trainers do
    resources :pokemons, only: :create
  end
  resources :pokemons, only: :destroy do
    resources :move_pools, only: [ :new, :create ]
  end
end

# Generate a moves table X
# Generate a join table
# Associations and validations
# Crash test
