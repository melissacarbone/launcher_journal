require 'spec_helper'

describe Entry do
  it { should have_valid(:title).when('A title') }
  it { should_not have_valid(:title).when(' ', nil, 123) }

  it { should have_valid(:description).when('This is my entry with some numbers 123') }
  it { should_not have_valid(:description).when(' ', nil, 123) }

  it { should belong_to(:category) }
  #it { should belong_to(:user) }

end
