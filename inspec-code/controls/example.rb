# encoding: utf-8
# copyright: 2015, The Authors

title 'inspec-example'

# you can also use plain tests
describe file('/tmp') do
  it { should be_directory }
end

# you add controls here
control 'inspec-example' do                        # A unique ID for this control
  impact 0.1                                # The criticality, if this control fails.
  title 'inspec-example'             # A human-readable title
  desc 'An optional description...'
  describe file('/tmp') do                  # The actual test
    it { should be_directory }
  end
end

describe windows_feature('DHCP Server') do
  it { should be_installed }
end

describe file('C:\Windows') do
 it { should be_directory }
end

describe user('Administrator') do
  it { should exist }
end

describe package('chefdk') do
  it { should be_installed }
  its('version') { should eq '1.19.2.1' }
end

describe port(80) do
  it { should be_listening }
end

describe file('C:\Program Files\Java\jdk1.8.0_144\bin\java.exe') do
 it { should exist }
end
