class StaticPagesController < ApplicationController
  def home
    if current_user
      redirect_to current_user
    else
      render 'home'
    end
  end
end
