require "mark_opt_in_api/version"

module MarkOptInApi
  require 'httparty'
  class Api
    def self.add options = {}
      response = HTTParty.post('http://localhost:4567/marketings', query: { marketing: options })
      puts response
    end

    def self.update id = nil, options = {}
      raise 'Undefined ID' unless id
      response = HTTParty.put("http://localhost:4567/marketing/#{id}", query: { marketing: options })
      puts response
    end

    def self.delete id = nil
      raise 'Undefined ID' unless id
      response = HTTParty.delete("http://localhost:4567/marketing/#{id}")
      puts response
    end
  end
end
