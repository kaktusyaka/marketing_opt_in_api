require 'spec_helper'

describe 'MarkOptInApi::Api' do
  it "'add' mehtod require options" do
    expect { MarkOptInApi::Api.add }.should raise_error(ArgumentError)
    expect { MarkOptInApi::Api.add mobile: '123456' }.should_not raise_error(ArgumentError)
  end

  it "'delete' method require id" do
    expect { MarkOptInApi::Api.delete }.should raise_error(ArgumentError)
    expect { MarkOptInApi::Api.delete 1 }.should_not raise_error(ArgumentError)
  end

  it "'update' method Require Id and options" do
    expect { MarkOptInApi::Api.update nil, { mobile: '1234567' } }.should raise_error(ArgumentError)
    expect { MarkOptInApi::Api.update 1, {} }.should raise_error(ArgumentError)
    expect { MarkOptInApi::Api.update 1, { mobile: '123456' } }.should_not raise_error(ArgumentError)
  end

  it "Api update going to remote host" do
    stub_request(:put, "http://#{MarkOptInApi.configuration.host}:#{MarkOptInApi.configuration.port}/marketing/1?marketing%5Bmobile%5D=12123").
         to_return(:status => 200, :body => "", :headers => {})

    MarkOptInApi::Api.update 1, { mobile: '12123' }
  end
end
