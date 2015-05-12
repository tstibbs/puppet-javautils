require 'spec_helper'
describe 'javautils' do

  context 'with defaults for all parameters' do
    it { should contain_class('javautils') }
  end
end
