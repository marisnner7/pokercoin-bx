require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { FactoryBot.create(:user) }

  describe "associations" do
    it { should have_many(:pokemons) }
    it { should have_many(:transactions) }
  end

  it "should have an valid email" do
    expect(user.email).to be_truthy
  end

  context "when selling" do
    it "should have a valid balance" do
      expect(user.balance).to be_truthy
    end
  end

end
