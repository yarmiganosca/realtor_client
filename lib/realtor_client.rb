require "realtor_client/engine"

module RealtorClient
  def self.service_url= url
    @service_url = url.sub /http(s)?:\/\//, ""
  end

  def self.service_url
    "https://#{@service_url}"
  end
end

module ActionDispatch
  module Routing
    class Mapper
      module Base
        def mount_client client
          get "#{client}", to: "realtor_client/client_apps#show", defaults: {app_name: client}
          get "#{client}/*path", to: "realtor_client/client_assets#show", defaults: {app_name: client}
        end
      end
    end
  end
end
