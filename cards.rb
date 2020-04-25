require_relative 'deal'
require "tty-prompt"
require_relative 'begin'

@prompt = TTY::Prompt.new 

class Deck
    def initialize
    @still_playing = true
    @deck =[2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,]
    @player_hand = starting_hand
    @dealer_hand = starting_hand
    run_game
    end
end

def print_game_state
    puts "Players hand is #{@player_hand} Value: #{get_hand_value(@player_hand)}"
    puts "Dealer hand is #{@dealer_hand} Value:  #{get_hand_value(@dealer_hand)}"
end


def run_game
    user_input = false
     while user_input != 'stand'
         puts "HIT OR STAND"
         print_game_state
         if get_hand_value(@player_hand) > 21
             puts "YOU BUSTED HOUSE WINS"
             return
         end 
         user_input = gets.chomp
         if user_input == 'hit' 
             hit(@player_hand)
         elsif user_input == 'stand'
         puts "player stands"
         else 
         puts "Sorry, I didnt understand that"
         end 
     end
     house_rules
     blackjack_rules
 end







# def get_hand
#     deck_number = @deck[rand(@deck.length)] 
#     suit_number = @suit[rand(@suit.length)]
#     picture_number = @picture[rand(@picture.length)]
#     if deck_number == 10
#         return deck_number, suit_number, picture_number
#     elsif deck_number == 11
#         return deck_number, suit_number, 'Ace'
#     else
#         return deck_number, suit_number
#     end
# end 











# def get_hand
#     deck_number = @deck[rand(@deck.length)] 
#     suit_number = @suit[rand(@suit.length)]
#     picture_number = @picture[rand(@picture.length)]
#     if deck_number == 10
#         return deck_number, suit_number, picture_number
#     elsif deck_number == 11
#         return deck_number, suit_number, 'Ace'
#     else
#         return deck_number, suit_number
#     end
# end 


