class MovePoolsController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @move_pool = MovePool.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    moves = Move.where(id: params[:move_pool][:move_id])
    moves.each do |move|
      MovePool.create(move: move, pokemon: @pokemon)
    end
    redirect_to @pokemon.trainer
    # @move_pool.pokemon = @pokemon

    # if @move_pool.save
    #
    # else
    #   render :new
    # end
  end

  private

  # def move_pool_params
  #   params.require(:move_pool).permit(:move_id)
  # end
end
