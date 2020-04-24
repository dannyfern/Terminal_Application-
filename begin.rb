require "tty-prompt"
require_relative "Test"

prompt = TTY::Prompt.new

welcome = prompt.select("Choose your destiny?", %w(BlackJackQuickGame HELP! Exit))# =>

welcome = gets.chomp 

blackjack_alive = true 

while blackjack_alive
def main_menu 
    if welcome == "BlackJackQuickGame"
    load './Test.rb'
    elsif welcome == "Exit"
    blackjack_alive = false
    else welcome == HELP!
    load '.Test.rb'
    
end 







