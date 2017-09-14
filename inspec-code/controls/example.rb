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
