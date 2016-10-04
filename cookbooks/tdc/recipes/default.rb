#
# Cookbook Name:: tdc
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# update package database
execute "apt-get update"

# install packages
package "telnet"
package "postfix"
package "curl"
package "git-core"
package "tree"

# set timezone
bash "set timezone" do
  code <<-EOH
    echo 'US/Pacific-New' > /etc/timezone
    dpkg-reconfigure -f noninteractive tzdata
  EOH
  not_if "date | grep -q 'PDT\|PST'"
end