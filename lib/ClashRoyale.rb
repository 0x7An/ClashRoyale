require 'clashroyale/version'
require 'httparty'
require 'byebug'

# Top module
module Clashroyale
  include HTTParty
  include Byebug
end

# Chashdata class
class Clashdata
  include Clashroyale

  attr_accessor :cards, :arenas, :chests, :players

  def initialize
    @players = []
    @chests = []
    @arenas = []
    @cards =  []
  end

  def cards
    @cards = fetch('cards') if @cards.empty?
    @cards
  end

  def chests
    @chests = fetch('chests') if @chests.empty?
    @chests
  end

  def players
    @players = fetch('players') if @players.empty?
    @players
  end

  def arenas
    @arenas = fetch('arenas') if @arenas.empty?
    @arenas
  end

  private

  def fetch(type)
    begin
      request = HTTParty.get("http://www.clashapi.xyz/api/#{type}", format: :json).parsed_response
    rescue => e
      puts "Rescued #{e.inspect}"
    end
  end
end
