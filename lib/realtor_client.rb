require "realtor_client/engine"

module RealtorClient
  def self.service_url= url
    @service_url = url
  end

  def self.service_url
    @service_url
  end
end

module ActionDispatch
  module Routing
    class Mapper
      module Base
        def mount_client client
          get "#{client}", to: "realtor_client/client_apps#show", defaults: {app_name: client}
          get "#{client}/*path.js", to: redirect("#{RealtorClient.service_url}/#{client}/%{:path}.js")
        end
      end
    end
  end
end
