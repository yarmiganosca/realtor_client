module RealtorClient
  class ClientAppsController < ApplicationController
    def show
      @app_name = params[:app_name]
    end
  end
end
