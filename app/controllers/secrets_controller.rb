class SecretsController < ApplicationController

  def index
    @name = env['omniauth.auth']['info']['name']
  end
end
