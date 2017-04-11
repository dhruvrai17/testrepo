execute 'apt-key update' do
  command 'apt-key update'
  ignore_failure true
  action :nothing
  only_if { apt_installed? }
end

execute 'apt-get update' do
  command 'apt-get update'
  ignore_failure true
  action :nothing
  only_if { apt_installed? }
end

package 'imagemagick'  do
  action [:upgrade]
  retries 0
  retry_delay 5
  package_name "imagemagick"
  version "8:6.7.7.10-6ubuntu3.6"
end
