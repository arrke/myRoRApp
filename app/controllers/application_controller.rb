class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  def index
    @articles = Article.all
  end
end
