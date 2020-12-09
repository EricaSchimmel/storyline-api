require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  before(:each) do 
    @user = build(:user)
  end 

  it "is valid with valid attributes" do 
    expect(@user).to be_valid 
  end 

  it "is valid with a unique username" do
    user2 = create(:user, email: Faker::Internet.email, username: Faker::Internet.username)
    @user.username = user2.username

    expect(@user).to_not be_valid
  end

  it "is valid with a unique email" do 
    user2 = create(:user, email: Faker::Internet.email, username: Faker::Internet.username)
    @user.email = user2.email

    expect(@user).to_not be_valid
  end 

  it "is not valid with a invalid email" do
    @user.email = "test @example.com"
    expect(@user).to_not be_valid 
  end 

  it "is valid with a valid username" do 
    expect(@user).to be_valid
  end 

  it "is not valid with a invalid username" do 
    @user.username = "a"
    expect(@user).to_not be_valid 
  end 

  it "is not valid when passwords do not match" do 
    @user.password_confirmation = "asdf"
    expect(@user).to_not be_valid
  end 

  it "is not valid without a password" do 
    @user.password = nil
    expect(@user).to_not be_valid
  end 

  it "is not valid without an email" do 
    @user.email = nil
    expect(@user).to_not be_valid
  end 

  it "is not valid without a username" do 
    @user.username = nil
    expect(@user).to_not be_valid
  end 
end
