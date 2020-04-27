def help
    puts "-------------Welcome to the help section----------".colorize(:magenta)
    puts "The Objective of Blackjack".colorize(:yellow)
    puts "Beat The Dealer. There are some misconceptions about the objective of the game of blackjack but at the simplest level all you are trying to do is beat the dealer."
    
    puts "How do you beat the dealer?".colorize(:yellow)
    
    puts "By drawing a hand value that is higher than the dealer’s hand value".colorize(:blue)
    puts "By the dealer drawing a hand value that goes over 21.".colorize(:blue)
    puts "By drawing a hand value of 21 on your first two cards, when the dealer does not.".colorize(:blue)
    
    puts "How do you lose to the dealer?".colorize(:yellow)
    
    puts "Your hand value exceeds 21.".colorize(:red)
    puts "The dealers hand has a greater value than yours at the end of the round".colorize(:red)
end 