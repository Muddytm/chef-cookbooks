#
# Cookbook:: authbot
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

git "/opt/opsbot35" do
  repository 'https://github.com/Muddytm/opsbot35.git'
  revision 'master'
end

# Default action is :install
python_runtime '3'

# Defaults for the following python_packages are :install
# TODO: determine if these are installing with pip or pip3. They're probably
# installing with pip, so a pip3 cookbook dependency might be in order?
python_package 'pyyaml'

python_package 'pyodbc' # note: `apt-get install unixodbc unixodbc-dev` may need to be run first...

python_package 'requests'

python_package 'slackbot'

# TODO: install msodbcsql17 - but there doesn't seem to be a cookbook for this.
# Again...might need to make one.

# Configure bot settings
include_recipe "authbot::bot_config"
