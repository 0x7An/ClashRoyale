require 'lib/ClashRoyale.rb'

class Card < Clashroyale
  attr_accessor :id, :idName, :rarity, :type, :name, :description, :arena, :elixirCost, :order

    card = {
        :id => id,
        :idName => idName,
        :rarity => rarity,
        :type => type,
        :name => name,
        :description => description,
        :arena => arena,
        :elixirCost => elixirCost,
        :order => order
      }

  def initialize
  	@cards = fetch('cards') if @cards.empty?

    @cards.each do |data|
      card << data
    end
  end

  def count 
    card.counts
  end

end