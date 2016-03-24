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
	it "creates a new coinuser in the database" do	
   	  expect(written).to eq true
  	end
	it "reads a coinuser from the database" do	
   	  expect(written).to eq true	
	end
	it "updates a coinuser in the database" do
   	  expect(written).to eq true	
	end
	it "deletes a coinuser in the database" do
   	  expect(written).to eq true	
	end
end
