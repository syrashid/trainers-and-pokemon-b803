Rails.application.routes.draw do
  resources :trainers do
    resources :pokemons, only: :create
  end
  resources :pokemons, only: :destroy
end

# Generate a moves table X
# Generate a join table
# Associations and validations
# Crash test
