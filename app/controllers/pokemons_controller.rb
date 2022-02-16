class PokemonsController < ApplicationController
  def create
    # Get the id of the trainer, get the trainer
    @trainer = Trainer.find(params[:trainer_id])
    # Look into the params, select the pokemon params
    # Create a new pokemon with said strong_params
    @pokemon = Pokemon.new(pokemon_params)
    # If you do this 👇 a puppy dies 🐶
    # @pokemon.trainer_id = @trainer.id
    # Do this instead 👇 always
    @pokemon.trainer = @trainer

    if @pokemon.save
      # If it saves, then go back to the trainer page
      # redirect_to trainer_path(@trainer)
      redirect_to @trainer
    else
      # Else render :show
      render 'trainers/show'
    end

  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to @pokemon.trainer
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image_url)
  end
end
