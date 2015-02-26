require "rails_helper"

RSpec.describe User, :type => :model do
  it "Creates an user" do
    expect{
      @user = create(:user)
    }.to change{ User.count }.by(1)
  end
end