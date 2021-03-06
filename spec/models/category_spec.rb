require 'spec_helper'

describe Category do
  it { should have_many(:entries) }

  it { should validate_uniqueness_of(:name) }
end
