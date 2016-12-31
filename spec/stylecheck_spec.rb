require 'spec_helper'

describe Stylecheck do
  subject { Stylecheck.new }
  it 'has a version number' do
    expect(Stylecheck::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
