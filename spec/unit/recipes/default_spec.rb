#
# Cookbook:: java
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'java::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
   it 'runs apt get update' do
       expect(chef_run).to update_apt_update 'update_sources'
       end
         it 'installs the OpenJDK' do
   expect(chef_run).to install_package('openjdk-8-jre-headless')
    
 end
  # end
  # it 'should install default-jdk' do
  #        expect(chef_run).to install_package 'default-jdk'
  # end
  # it 'should install oracle-java8-installer' do
  #        expect(chef_run).to install_package 'oracle-java8-installer'
  # end
end
