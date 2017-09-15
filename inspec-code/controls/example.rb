# encoding: utf-8
# copyright: 2015, The Authors

title 'inspec-example'

# you can also use plain tests
describe file('/tmp') do
  it { should be_directory }
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

describe file('C:\Program Files\Java\jdk1.8.0_144\bin\java.exe') do
 it { should exist }
end
