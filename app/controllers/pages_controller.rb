class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @shetlands = Shetland.all.order("created_at DESC").limit(3)
  end

  # def details
  # end
end
