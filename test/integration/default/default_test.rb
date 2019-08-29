# InSpec test for recipe java::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end
describe command('java -version') do
  its('exit_status') { should eq 0 }
  its('stderr') { should match(/openjdk version "1\.8\..*"/) }
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
  its('processes') { should include 'java' }
end
