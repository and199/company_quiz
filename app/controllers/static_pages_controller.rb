class StaticPagesController < ApplicationController
  def home
    render plain: 'welcome home'
  end
end
