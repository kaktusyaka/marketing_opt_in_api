require 'spec_helper'

describe Marketing do
  context 'Validations' do
    it { should validate_email_format_of(:first_name) }
  end

  it "new Marketing should be not valid" do
    Marketing.new.valid?.should be_false
  end
end
