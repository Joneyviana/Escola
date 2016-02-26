require 'rails_helper'
require 'spec_helper'
RSpec.describe Professor, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:professor)).to be_valid
  end
end
