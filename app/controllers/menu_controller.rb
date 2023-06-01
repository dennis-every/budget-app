class MenuController < ApplicationController
  skip_load_and_authorize_resource
  layout 'menu'

  def index; end
end
