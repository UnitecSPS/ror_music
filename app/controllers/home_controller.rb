class HomeController < ApplicationController
  skip_before_filter :authenticate
  layout "home"

  def index
  end

  def songlist
  end

  def singerlist
  end
end
