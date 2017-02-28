require 'clashroyale/version'
require 'httparty'
#
module Clashroyale
  include HTTParty
  base_uri 'http://www.clashapi.xyz'

  def self.cards
    parsed get("#{base_uri}/api/cards", format: :json)
  end

  def self.arenas
    parsed get("#{base_uri}/api/arenas", format: :json)
  end

  def self.chests
    parsed get("#{base_uri}/api/chests", format: :json)
  end

  def self.players
    parsed get("#{base_uri}/api/players", format: :json)
  end

  private

  def parsed(response)
    response.parsed_response
  end
end
