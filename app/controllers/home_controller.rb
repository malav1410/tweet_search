
class HomeController < ApplicationController
  
  def index
    
    @articles = Article.all.to_json
    render template: "home/index", layout: false
  end

  def search
    query = params[:query].present? ? params[:query] : "*"
    @articles = Article.search "#{query}", fields: [:author, :title, :des], match: :word_start

    render json: { search: @articles}
  end
end
