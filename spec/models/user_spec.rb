require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { build(:user) }

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end

  it { should validate_presence_of(:username) }
  it { should validate_length_of(:username).is_at_least(5).is_at_most(15) }
  it { should validate_uniqueness_of(:username) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should allow_value("test_user@example.com").for(:email) }
  it { should_not allow_value("test user@example.com").for(:email) }

  it { should validate_presence_of(:password) }
  it { should validate_length_of(:password).is_at_least(6).is_at_most(128) }
  it { should validate_confirmation_of(:password) }
end
