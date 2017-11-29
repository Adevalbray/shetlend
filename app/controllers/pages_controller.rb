class PagesController < ApplicationController
  def home
    @shetlands = Shetland.all.order("created_at DESC").limit(3)
  end
end
