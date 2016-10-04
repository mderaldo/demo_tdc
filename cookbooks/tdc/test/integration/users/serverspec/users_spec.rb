require 'serverspec'


describe group('tdc_group') do
	it{ should exist }
end


describe user('tdc_user') do
  it { should exist }

  it { should belong_to_group 'tdc_group' }

  it { should have_home_directory '/home/tdc_user' }

  it { should have_login_shell '/bin/bash' }

end
