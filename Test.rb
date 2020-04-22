class Deck
    def initialize
    @suit = ['Clubs', 'Spades', 'Hearts', 'Diamonds']
    @picture = ['Jack', 'Queen', 'King']
    @deck =[2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,]
    @player_hand = starting_hand
    @dealer_hand = starting_hand
    puts "Players hand is #{@player_hand}"
    puts "Dealer hand is #{@dealer_hand}"
    end
end

#Return the intitial hand for later use on hit function
def starting_hand
    [get_hand, get_hand]
end 

#Initialize output of deck randomly and supply it with parameters for the value of card chosen.
def get_hand
    deck_number = @deck[rand(@deck.length)] 
    suit_number = @suit[rand(@suit.length)]
    picture_number = @picture[rand(@picture.length)]
    if deck_number == 10
        return deck_number, suit_number, picture_number
    elsif deck_number == 11
        return deck_number, suit_number, 'Ace'
    else
        return deck_number, suit_number
    end
end 

#Return the sum of the hand to a value


Deck.new





