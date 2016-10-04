require 'serverspec'


describe package('telnet') do
    it { should be_installed }
end

describe package('postfix') do
    it { should be_installed }
end

describe package('curl') do
    it { should be_installed }
end

describe package('git-core') do
    it { should be_installed }
end

describe package('tree') do
    it { should be_installed }
end