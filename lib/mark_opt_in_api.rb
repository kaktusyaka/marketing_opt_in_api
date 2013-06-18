require "mark_opt_in_api/version"


module MarkOptInApi
  require 'httparty'

  class Configuration
    attr_accessor :host, :port

    def initialize
      self.host = 'http://example.com'
      self.port = 3000
    end
  end

  def self.configuration
    @configuration ||=  Configuration.new
  end

  def self.configure
    yield(configuration) if block_given?
  end

  class Api
    def self.add options = {}
      raise ArgumentError.new('Options should be present') if options.empty?
      response = HTTParty.post("http://#{MarkOptInApi.configuration.host}:#{MarkOptInApi.configuration.port}/marketings", query: { marketing: options })
      puts response
    end

    def self.update id = nil, options = {}
      raise ArgumentError.new('ID and Options should be present') if id.nil? || options.empty?
      response = HTTParty.put("http://#{MarkOptInApi.configuration.host}:#{MarkOptInApi.configuration.port}/marketing/#{id}", query: { marketing: options })
      puts response
    end

    def self.delete id = nil
      raise ArgumentError.new('ID should be present') unless id
      response = HTTParty.delete("http://#{MarkOptInApi.configuration.host}:#{MarkOptInApi.configuration.port}/marketing/#{id}")
      puts response
    end
  end
end
