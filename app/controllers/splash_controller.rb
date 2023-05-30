class SplashController < ApplicationController
  skip_before_action :authenticate_user!
  skip_load_and_authorize_resource

  def index
    redirect_to categories_path if current_user
  end
end
