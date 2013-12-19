require 'spec_helper'

describe Category do
  it 'should seed' do
  	expect(Category.seed).to eq true
  end

  #valid attributes
  it { should have_valid(:name).when("Sam's Porn") }
  it { should_not have_valid(:name).when(nil,"")}

  #associations
  it { should have_many :books }
end
