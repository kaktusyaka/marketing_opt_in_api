require "mark_opt_in_api/version"

module MarkOptInApi
  class Api
    def add
      response = HTTParty.post('http://localhost:4567/marketings')
      puts response.body, response.code, response.message, response.headers.inspect
    end
  end
end
