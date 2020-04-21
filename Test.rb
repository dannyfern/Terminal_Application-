class Deck
    def initialize
    @suit = ['clubs', 'spades', 'hearts', 'diamonds']
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

def deal
    @deck[rand(@deck.length)] 
    # @suit[rand(@suit.length)]
end 
    
Deck.new

