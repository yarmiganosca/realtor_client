module RealtorClient
  class ClientAssetsController < ApplicationController
    def show
      redirect_to "#{RealtorClient.service_url}#{params[:app_name]}/#{params[:path]}.#{params[:format]}"
    end
  end
end
