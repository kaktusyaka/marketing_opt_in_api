require 'spec_helper'

describe Marketing do
  context 'Validations' do
    it { should validate_presence_of(:first_name) }
    it { should ensure_length_of(:first_name).is_at_most(255) }
    it { should validate_presence_of(:last_name) }
    it { should ensure_length_of(:last_name).is_at_most(255) }
    it { should ensure_length_of(:email).is_at_most(255) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:mobile) }
    it { should ensure_length_of(:mobile).is_at_most(255) }
    it { should validate_presence_of(:company_name) }
    it { should validate_uniqueness_of(:company_name) }
    it { should ensure_length_of(:company_name).is_at_most(255) }
    it { should ensure_inclusion_of(:channel).in_array(Marketing::AVAILABLE_CHANNEL_TYPES) }
    it { should ensure_inclusion_of(:permission_type).in_array(Marketing::AVAILABLE_PERMISSION_TYPES) }

    it { should allow_value('kaktusyaka@gmail.com', 'apapap.dodod@gmail.com').for(:email) }
    it { should_not allow_value('', 'apapap.gmail.com').for(:email) }
    it { should allow_value('121323432', '12323243545').for(:mobile) }
    it { should_not allow_value('2123asd3', '', '23123+2131').for(:mobile)  }
  end
end
