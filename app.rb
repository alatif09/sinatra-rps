require "sinatra"
require "sinatra/reloader"

computer_choices = ["rock", "paper", "scissors"]

get("/") do
  erb(:elephant)
end

get("/rock") do
  
  computer_choice = computer_choices.sample
  @comp_choice = []
  @result = []

  if computer_choice == "rock"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We tied!")
  elsif computer_choice == "scissors"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We won!")
  elsif computer_choice == "paper"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We lost!")   
  end

 erb(:rock)
end

get("/paper") do
  
  computer_choice = computer_choices.sample
  @comp_choice = []
  @result = []

  if computer_choice == "rock"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We won!")
  elsif computer_choice == "scissors"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We lost!")
  elsif computer_choice == "paper"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We tied!")   
  end
   
 erb(:paper)
end 

get("/scissors") do
  
  computer_choice = computer_choices.sample
  @comp_choice = []
  @result = []

  if computer_choice == "rock"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We lost!")
  elsif computer_choice == "scissors"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We tied!")
  elsif computer_choice == "paper"
    @comp_choice.push("They played #{computer_choice}!")
    @result.push("We won!")   
  end
   
 erb(:scissors)
end 
