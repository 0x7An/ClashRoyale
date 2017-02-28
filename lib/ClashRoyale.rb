require 'clashroyale/version'
require 'httparty'
#
module Clashroyale
  include HTTParty
  base_uri 'http://www.clashapi.xyz'

  def self.cards
    get("#{base_uri}/api/cards", format: :json).parsed_response
  end

  def self.arenas
    get("#{base_uri}/api/arenas", format: :json).parsed_response
  end

  def self.chests
    get("#{base_uri}/api/chests", format: :json).parsed_response
  end

  def self.players
    get("#{base_uri}/api/players", format: :json).parsed_response
  end

end
