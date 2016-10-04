require 'spec_helper'

describe 'tdc::default' do
  cached(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  before do
    stub_command("date | grep -q 'PDT|PST'").and_return('')
  end
  
  it 'executes apt-get update' do
    expect(chef_run).to run_execute('apt-get update')
  end
  it 'install telnet package' do
   expect(chef_run).to install_package('telnet')
  end

  it 'instal postfix package' do
    expect(chef_run).to install_package('postfix')
  end

  it 'install curl package' do
   expect(chef_run).to install_package('curl')
  end

  it 'instal git-core package' do
    expect(chef_run).to install_package('git-core')
  end

  it 'instal tree package' do
    expect(chef_run).to install_package('tree')
  end
end
