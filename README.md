# MarkOptInApi

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mark_opt_in_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mark_opt_in_api

## Usage

Example Usage:

  Add new record use:
     MarkOptInApi::Api.add mobile: '1231432432', first_name: 'asdsajhdgaj', last_name: 'ahsdjashgdas', email: 'kaka@gmail.com', company_name: 'sadasdas', channel: 'sms', permission_type: "one-time"

  Update exist record:
     MarkOptInApi::Api.update 1, {company_name: 'super company'}

     first param: record id
     second param: hash with update information

   Delete
      MarkOptInApi::Api.delete 1

       first param: record id


    Configuration:

      MarkOptInApi.configure do |config|
        config.host = 'http://localhost'
        config.port = 3000
      end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
