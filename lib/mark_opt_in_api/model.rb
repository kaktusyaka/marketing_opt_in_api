class Marketing < ActiveRecord::Base

  attr_accessible :mobile, :first_name, :last_name, :company_name, :email, :channel, :permission_type

  AVAILABLE_PERMISSION_TYPES = %w(one-time permanent)
  AVAILABLE_CHANNEL_TYPES     = %w(sms email sms+email)

  validates :mobile, presence: true, length: { maximum: 255 }, format: { with: /\A\+?[0-9\-\(\) ]*\Z/ }
  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :company_name, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :email, email_format: true, uniqueness: true, length: { maximum: 255 }
  validates :channel, inclusion: { in: AVAILABLE_CHANNEL_TYPES }
  validates :permission_type, inclusion: { in: AVAILABLE_PERMISSION_TYPES }
end
