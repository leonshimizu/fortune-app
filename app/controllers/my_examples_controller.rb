class MyExamplesController < ApplicationController
  def random_fortune # feature 1
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
end
