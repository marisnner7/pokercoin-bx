require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  let(:pokemon) { FactoryBot.create(:pokemon) }

  describe "associations" do
    it { should belong_to(:user)}
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:base_experience) }
  end
  
end
