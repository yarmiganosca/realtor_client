require 'spec_helper'

describe "mount_client", type: :routing do
  routes { Dummy::Application.routes }

  # it "routes" do
  #   destination = {controller: "realtor_client/client_apps", app_name: "hello", action: "show"}

  #   expect(get: "/realtor_client/hello").to route_to destination
  # end

  it "routes /hello to RealtorClient::ClientAppsController" do
    destination = {controller: "realtor_client/client_apps", app_name: "hello", action: "show"}

    expect(get: "/hello").to route_to destination
  end

  it "redirects /hello/config.js to RealtorService" do
    RealtorClient.service_url = "realtor.domain.com"
    destination = "realtor.domain.com/hello/config.js"

    expect(get: "/hello/config.js").to route_to destination
  end
end
