# InSpec test for recipe my_first_cookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe 'httpd' do 
  it { should }
end

describe service('httpd') do
  it { should be_running }
end

describe command('curl localhost') do
  its('stdout') { should match /cookbook/ }
end

describe port(80) do
  it { should be_listening }
end