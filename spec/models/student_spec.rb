require 'rails_helper'

RSpec.describe Student, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:student)).to be_valid
  end
  it "is invalid without a name" do
    expect(FactoryGirl.build(:student, name: nil)).not_to be_valid
  end
  it "is invalid with a status as string" do
    expect(FactoryGirl.build(:student, status:"status")).not_to be_valid
  end
  it "is invalid with a register_number as string" do
    expect(FactoryGirl.build(:student, register_number:"register_number")).not_to be_valid
  end
end
