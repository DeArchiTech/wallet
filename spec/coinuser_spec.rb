require 'rails_helper'

describe Coinuser do
  it "is valid with a firstname, lastname, email" do	
    expect(written).to eq true	
  end
  it "is invalid without an email"do 
    expect(written).to eq true	
  end
  it "is invalid without an email address" do
    expect(written).to eq true	
  end
end
