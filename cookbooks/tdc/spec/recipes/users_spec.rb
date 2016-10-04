require 'spec_helper'

describe 'tdc::users' do
	cached(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

	before(:each) do
		chef_run.converge(described_recipe)
	end

	it 'creates a tdc group' do  
		expect(chef_run).to create_group('tdc_group')
	end

	it 'creates a tdc user' do  
		expect(chef_run).to create_user('tdc_user')
	end
end