require 'spec_helper'

describe 'tdc::users' do
	cached(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

	before(:each) do
		chef_run.converge(described_recipe)
	end

	it 'creates a group' do  
		expect(chef_run).to create_group('group')
	end
end