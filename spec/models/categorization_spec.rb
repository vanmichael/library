require 'spec_helper'

describe Categorization do
  #validations
  it { should have_valid(:book_id).when(1) }
  it { should_not have_valid(:book_id).when(nil,'') }
  #associations
  it { should belong_to :category }
  it { should belong_to :book } 


end
