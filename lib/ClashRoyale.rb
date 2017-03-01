require 'clashroyale/version'
require 'httparty'

# Top module
module Clashroyale
  include HTTParty
end

# Deck class
class Deck
  include Clashroyale

  attr_accessor :cards, :arenas, :chests, :players
  # base_uri = 'http://www.clashapi.xyz'
  # that hash has 4 others hashes

  def initialize
    self.cards = fetch('cards')
    self.arenas = fetch('arenas')
    self.chests = fetch('chests')
    self.players = fetch('players')
  end

  def legendary
    cards.map do |hsh|
      hsh.map do |item|
        puts item['legendary']
        puts item['name']
      end
    end
  end

  def fetch(type)
    HTTParty.get("http://www.clashapi.xyz/api/#{type}", format: :json).parsed_response
  end
end
