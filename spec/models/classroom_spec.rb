require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:classroom)).to be_valid
  end
end
