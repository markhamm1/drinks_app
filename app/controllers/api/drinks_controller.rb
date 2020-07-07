class Api::DrinksController < ApplicationController
  def index
    @drinks = Drink.all
    render 'index.json.jb'
  end

  def show
    @drink = Drink.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @drink = Drink.new(
      prep_time: params[:prep_time],
      ingredients: params[:ingredients],
      price: params[:price],
      prep_time: params[:prep_time]
    )
    @drink.save
    render 'show.json.jb'
  end

  def destroy
    @drink = Drink.find_by(id: params[:id])
    render json: {message: "You have successfully deleted the record."}
  end

  def update
    @drink = Drink.find_by(id: params[:id])
    @drink.update(
      name: params[:name] || @drink.name,
      ingredients: params[:ingredients] || @drink.ingredients,
      price: params[:price] || @drink.price,
      prep_time: params[:prep_time] || @drink.prep_time,
    )
    render 'show.json.jb'
  end
end
