require 'spec_helper'

describe Book do
  #validations
  	#should
  it { should validate_presence_of :title }
  it { should validate_presence_of :author }
  it { should validate_numericality_of :rating }
  	#valid attribute
  it { should have_valid(:title).when('a title') }
  it { should_not have_valid(:title).when(nil,'') }

  #associations:
  it { should have_one :checkout }
  it { should have_many :categorizations }


  it 'should have a title and author' do
  	book = FactoryGirl.create(:book, title: 'Sams Club', author: 'Jason' )
  	expect(book.title).to eql 'Sams Club'
  	expect(book.author).to eql 'Jason'
  end

  it 'should seed the database' do
  	expect(Book.seed).to eq true
  end

  
end
