class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def roll_it
    @roll = params.fetch("first").to_i
    @sides = params.fetch("second").to_i
    
    @array_of_numbers = Array.new

    1.times do
      another_number = rand(1...6)
      
      @array_of_numbers.push(another_number)
    end
    
    render({ :template => "dice/dice_result.html.erb" })
  end
end
