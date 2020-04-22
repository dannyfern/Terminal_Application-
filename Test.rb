class Deck
    def initialize
    @suit = ['clubs', 'spades', 'hearts', 'diamonds']
    @picture = ['Jack', 'Queen', 'King']
    @deck =[2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,
            2,3,4,5,6,7,8,9,10,10,10,10,11,]
            puts "your card is #{deal}" 
    end
end
#Initialize output of deck randomly and supply it with parameters for the value of card chosen.
def deal
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
    
deck = Deck.new
deck1 = Deck.new



