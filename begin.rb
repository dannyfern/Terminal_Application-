require "tty-prompt"

prompt = TTY::Prompt.new

welcome = prompt.select("Choose your destiny?", %w(BlackJackQuickGame HELP! Exit))# =>

welcome = gets.chomp 

if welcome == "BlackJackQuickGame"
    load './Test.rb'
end 