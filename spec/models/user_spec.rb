require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:user) { FactoryBot.create(:user) }

  it "should have an valid email" do
    expect(user.email).to be_truthy
  end
end
