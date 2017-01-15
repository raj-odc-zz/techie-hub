class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_recent_articles

  private
  def get_recent_articles
    @recent_articles = Article.where('created_at >= ?', 1.week.ago).order('id desc').limit(7)
  end
end
