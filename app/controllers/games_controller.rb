require 'open-uri'
class GamesController < ApplicationController
  def new
    # will be used to display a new random grid and a form
    # generate random grid of letters
    @grid = Array('a'..'z')
    @letters = @grid.sample(9)
  end
  def score
    # The form will be submitted (with POST) to the score action.
    response = open("https://wagon-dictionary.herokuapp.com/#{params['word']}").read
    @h = JSON.parse(response, symbolize_names: true)
  end
end
