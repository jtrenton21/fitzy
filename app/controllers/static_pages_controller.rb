class StaticPagesController < ApplicationController
def home
    if signed_in?
      @workout  = current_user.workouts.build
      # @workout = current_user.feed.paginate(page: params[:page])
      # @feed_items = current_user.feed.paginate(page: params[:page])
      
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
