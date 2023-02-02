require 'rails_helper'

RSpec.describe User, type: :model do
	describe "check validation user" do
    
    it "should be valid" do
      user = User.new(name: "Example User", email: "user@example.com")
      user.valid?
    end
	end  
	
	it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:password) }

  it { is_expected.to validate_length_of(:name).is_at_most(50) }
  it { is_expected.to validate_length_of(:email).is_at_most(255) }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }

  # it { should validate_uniqueness_of(:email).ignoring_case_sensitivity } 

  # it { should validate_format_of(:email).with(User::VALID_EMAIL_REGEX) }
end