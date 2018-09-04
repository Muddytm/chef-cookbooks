# Template resources for authbot configs. Node variables can maybe be set via
# online chef interface? Check with Edward/Michael.
template "/opt/opsbot35/opsbot/config.py" do
  source "config.py.erb"
  variables(
    :AZURE_USER => "#{node['authbot']['azure_user']}"
    :AZURE_PWD => "#{node['authbot']['azure_pwd']}"
    :AZURE_PROD_DSN => "#{node['authbot']['azure_prod_dsn']}"
    :AZURE_TENANT_ID => "#{node['authbot']['azure_tenant_id']}"
    :AZURE_SUB_ID => "#{node['authbot']['azure_sub_id']}"
    :AZURE_CLIENT_ID => "#{node['authbot']['azure_client_id']}"
    :AZURE_CLIENT_SECRET => "#{node['authbot']['azure_client_secret']}"
    :AZURE_RESOURCE_GROUP => "#{node['authbot']['azure_resource_group']}"
    :SUMOLOGIC_ENDPOINT => "#{node['authbot']['sumologic_endpoint']}"
    :NEWRELIC_ACC_ID => "#{node['authbot']['newrelic_acc_id']}"
    :NEWRELIC_APP_ID => "#{node['authbot']['newrelic_app_id']}"
    :NEWRELIC_USER_EMAIL => "#{node['authbot']['newrelic_user_email']}"
    :NEWRELIC_PWD => "#{node['authbot']['newrelic_password']}"
    :AUTH_CHANNEL => "#{node['authbot']['auth_channel']}"
    :AUTH_CHANNEL_ERRORS => "#{node['authbot']['auth_channel_errors']}"
  )

template "/opt/opsbot35/slackbot_settings.py" do
  source "slackbot_settings.py.erb"
  variables(
    :SLACKBOT_API_TOKEN => "#{node['authbot']['slackbot_api_token']}"
  )
