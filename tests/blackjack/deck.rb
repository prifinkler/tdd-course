require_relative 'card'

class Deck
  # a deck of cards is simply an array of cards, 52
  attr_reader :deck, :suits, :ranks
  SUITS = ['Spades', 'Hearts', 'Clubs', 'Diamonds']
  RANKS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

  def initialize(suits, ranks)
    @deck = []
    @suits = suits
    @ranks = ranks
    create_deck
  end

  def shuffle
    @deck.shuffle!
  end

  def deal_card
    @deck.pop
  end

  def replace_with(new_deck)
    @suits = []
    @ranks = []
    @deck = new_deck

    new_deck.each do |card|
      add_suit_rank(card)
    end
  end

  private

  def create_deck
    suits.each do |suit|
      ranks.each do |rank|
        @deck.push(Card.new(suit,rank))
      end
    end
    self
  end

  def add_suit_rank(card)
    suit = card.suit
    rank = card.rank
    @suits.push(suit) unless @suits.include?(suit)
    @ranks.push(rank) unless @ranks.include?(rank)
  end
end
