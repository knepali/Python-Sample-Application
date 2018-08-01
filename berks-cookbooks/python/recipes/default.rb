#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# python_runtime 'python3' do
#   version '3.5'
# end
apt_update 'update_sources' do
  action :update
end

package 'python'
package 'python-pip'
