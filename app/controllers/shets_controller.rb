class ShetsController < ApplicationController
  def index
    @shetlands = Shetland.all
  end
end
