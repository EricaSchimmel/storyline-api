require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  before(:all) do 
    @user1 = create(:user)
  end 

  it "is valid with valid attributes" do 
    expect(@user1).to be_valid 
  end 

  it "is valid with a unique email" do
    user2 = build(:user, username: Faker::Internet.username)

    expect(user2).to_not be_valid
  end

  it "is valid with a unique username" do 
    user2 = build(:user, email: Faker::Internet.email)

    expect(user2).to_not be_valid
  end 

  it "is valid with a valid email" do
    user2 = build(:user, username: Faker::Internet.username, email: "test @example.com")

    expect(user2).to_not be_valid 
  end 

  it "is valid with a valid username" do 
    user2 = build(:user, email: Faker::Internet.email, username: "test")

    expect(user2).to_not be_valid
  end 

  it "is not valid when passwords do not match" do 
    user2 = build(:user, email: Faker::Internet.email, username: Faker::Internet.username, password_confirmation: "sample")

    expect(user2).to_not be_valid
  end 

  it "is not valid without a password" do 
    user2 = build(:user, email: Faker::Internet.email, username: Faker::Internet.username, password: nil)

    expect(user2).to_not be_valid
  end 

  it "is not valid without an email" do 
    user2 = build(:user, username: Faker::Internet.username, email: nil)

    expect(user2).to_not be_valid
  end 

  it "is not valid without a username" do 
    user2 = build(:user, email: Faker::Internet.email, username: nil)

    expect(user2).to_not be_valid
  end 
end
