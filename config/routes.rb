RealtorClient::Engine.routes.draw do
  get ':app_name', to: 'client_apps#show'
  get ':app_name/config.js', to: redirect("#{RealtorClient.service_url}/%{:app_name}/config.js")
  get ':app_name/*path', to: redirect("#{RealtorClient.service_url}/%{:app_name}/%{:path}")
end
