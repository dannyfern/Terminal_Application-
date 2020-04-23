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
    puts "Would you like to hit or stand?"
end

def run_game
    while @still_playing == true
        print_game_state
        option1 = gets.chomp.downcase
    if option1 == "hit"
            hit(@player_hand)
    elsif option1 == "stand"
        puts  "Your value remains #{@player_hand}"
    else 
        puts "Sorry thats not a valid option"
    end
    
    player_rules
    house_rules
  
    end
end

def player_rules
    if get_hand_value(@player_hand) > 21 
        print "YOU BUSTED HOUSE WINS"
    return end_game
    while get_hand_value(@player_hand) == 21
        print "BLACKJACK BABY"
    return end_game
    end
    end 
end 

def house_rules
    while get_hand_value(@dealer_hand) < 17 
        puts "House hits"
        hit(@dealer_hand)
        puts "Dealer hand is now #{@dealer_hand}"
        if get_hand_value(@dealer_hand) > 21
        print "HOUSE BUSTS YOU WIN"
        return end_game
        if get_hand_value(@player_hand) > get_hand_value(@dealer_hand)
        print "PLAYER WINS HOUSE LOSES"
        return end_game
        end
        end
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





