require 'artii'
require 'colorize'
require 'tty-prompt'
require_relative "blackjack"

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

puts welcome


def main_menu
    prompt = TTY::Prompt.new(enable_color: true)
    menu_choice = prompt.select('-------------------------Choose your Destiny-----------------------') do |menu|
            menu.default 3
            menu.choice 'Play Blackjack' => 1
            menu.choice 'HELP!' => 2
            menu.choice 'Quit' => 3

                menu_choice = gets.chomp.to_i

                if menu == 1
                    print "hello there"
                end
    end 
end 
        
puts main_menu



