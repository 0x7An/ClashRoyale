require 'clashroyale/version'
require 'httparty'

# Top module
module Clashroyale
  include HTTParty
end

# Deck class
class Chashdata
  include Clashroyale

  attr_accessor :cards, :arenas, :chests, :players
  # base_uri = 'http://www.clashapi.xyz'
  # that hash has 4 others hashes

  def initialize
    self.players = fetch('players')
    self.chests = fetch('chests')
    self.arenas = fetch('arenas')
    self.cards = fetch('cards')
  end

  private

  def fetch(type)
    HTTParty.get("http://www.clashapi.xyz/api/#{type}", format: :json).parsed_response
  end
end
