# require "tty-prompt"
# require_relative 'begin'

# @prompt = TTY::Prompt.new 

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

def house_rules
    while get_hand_value(@dealer_hand) < 17
        puts "HOUSE HITS"
        hit(@dealer_hand)
        puts "house now sits on #{@dealer_hand}"
    end 
end 

def blackjack_rules
    if get_hand_value(@player_hand) > 21
        puts "Sorry Sir, Your BUST! HOUSE WINS"
    elsif get_hand_value(@dealer_hand) > 21
        puts "CONGRATULATIONS HOUSE BUSTED YOU WIN"
    elsif get_hand_value(@player_hand) == 21
        puts "BLACKJACK BABY"
    elsif get_hand_value(@dealer_hand) == 21
        puts "BLACKJACK FOR THE HOUSE"
    end

    if get_hand_value(@player_hand) == get_hand_value(@dealer_hand)
        puts "Thats a redraw"
    elsif get_hand_value(@player_hand) > get_hand_value(@dealer_hand)
        puts "YOU WON HOUSE LOSES, SECURITY THIS GUY IS COUNTING CARDS"
    elsif get_hand_value(@player_hand) < get_hand_value(@dealer_hand)
        puts "YOU HAVE LOST AGAIN! GIVE ME THAT MULLAY PLUS A TIP PLEASE"
    else
        puts "Sorry im not sure what happened"
    end  
end
    

def end_game
    @still_playing = false
end

def hit(hand)
    hand.push(get_random_card)
end 

def get_hand_value(hand)
    sum = 0
    hand.each do |card|
        sum = sum + card
    end 
    sum
end 

def starting_hand
    [get_random_card, get_random_card]
end 

def get_random_card
    @deck.sample
end


Deck.new
