require "rails_helper"

RSpec.describe User, :type => :model do

  it "Creates an user" do
    expect{
      @user = create(:user)
      @user2 = create(:user)
    }.to change{ User.count }.by(2)
  end

  it "Doesnt create an user with incorrect password_confirmation" do
    expect{
      create(:user, :incorrect)
    }.to raise_error

    expect(User.count).to eq(0)
  end
end