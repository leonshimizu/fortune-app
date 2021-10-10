class MyExamplesController < ApplicationController
  def random_fortune # feature 1 - possibly use .shuffle or .sample
    number = Random.new
    random_number = number.rand(3)

    if random_number == 1
      fortune = "You win"
    elsif random_number == 2
      fortune = "Nothing happens"
    elsif random_number == 3
      fortune = "You lose"
    end

    render json: {fortune: fortune}
  end

  def random_number # feature 2
    number = Random.new
    numbers = []

    6.times do
      random_number = number.rand(60)
      numbers << random_number
    end
    
    render json: {random_numbers: numbers}
  end

  def bottles_of_beer # bonus
    i = 99
    lyrics = ""
    100.times do
      if i > 2
        lyrics << "#{i} bottles of beer on the wall, #{i} bottles of beer.
        Take one down and pass it around, #{i-1} bottles of beer on the wall.
                                                  
        "
      elsif i == 2
        lyrics <<  "#{i} bottles of beer on the wall, #{i} bottles of beer.
        Take one down and pass it around, #{i-1} bottle of beer on the wall.                  
        
        "
      elsif i == 1
        lyrics << "#{i} bottle of beer on the wall, #{i} bottle of beer.
        Take one down and pass it around, no more bottles of beer on the wall.
        
        "
      elsif i == 0
        lyrics << "No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
        
        "
      end
      i -= 1
    end
    render json: {song: lyrics}
  end
end
