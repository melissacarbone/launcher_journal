require 'spec_helper'

describe User do
  it { should have_many(:entries) }

  it { should have_valid(:name).when('Melissa', 'Alex') }
  it { should_not have_valid(:name).when(' ', nil, 123) }
end
