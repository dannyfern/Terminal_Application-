require 'artii'
require 'colorize'
require 'tty-prompt'
require_relative "blackjack"
require_relative 'help'

@prompt = TTY::Prompt.new

def welcome
    a = Artii::Base.new
    puts a.asciify("Binging").colorize(:magenta)

    a = Artii::Base.new
    puts a.asciify("With").colorize(:magenta)

    a = Artii::Base.new
    puts a.asciify("Blackjack").colorize(:magenta)


puts "Press ENTER to continue!".colorize(:red)
input = gets.chomp
    while input == "enter"
    break
end 
end

def main_menu
            menu_choice = @prompt.select('-------------------------Choose your Destiny-----------------------') do |menu|
            menu.default 3
            menu.choice 'Play Blackjack', 1
            menu.choice 'HELP!', 2
            menu.choice 'Quit', 3
        end
end 

puts welcome 

exit = false

while !exit
    choice = main_menu
    case choice
    when 1
        print "Starting Blackjack"
        puts "/n"
        puts Deck.new 
    when 2
         help 
    when 3
        exit = true
    end 
end 

