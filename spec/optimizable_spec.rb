require 'spec_helper'

describe Optimizable do
  it 'should have default options' do
    Optimizable.options.should == [:description, :title]
  end
  
  context 'set options' do
    before do
      Optimizable.options = [:title]
    end
    it 'should have default options' do
      Optimizable.options.should == [:title]
    end
  end
end