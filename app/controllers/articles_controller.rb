class ArticlesController < ApplicationController
  # skip_before_action :authorize, only: [:index]
  # before_action :authorize

  # GET /articles
  # def index
  #   @articles = Article.all
  #   render json: @articles
  # end

  def index
    @articles = Article.all
    render json: @articles
  end

  # GET /articles/1
  # def show
  #   render json: @article
  # end
  def show
    @articles = Article.find(params[:id])
    render json: @articles
  end

  # POST /articles
  # def create
  #   @article = Article.new(article_params)
  #   if @article.save
  #     render json: @article, status: :created, location: @article
  #   else
  #     render json: @article.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    @articles = Article.create(user_id: session[:user_id])
    render json: @articles, status: :created
  end

  # PATCH/PUT /articles/1
  # def update
  #   if @article.update(article_params)
  #     render json: @article
  #   else
  #     render json: @article.errors, status: :unprocessable_entity
  #   end
  # end

  def update
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    @article = Article.update(article_params)
    # code to update a document
  end


  # DELETE /articles/1
  def destroy
    @article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.permit(:title, :value, :number_of_likes, :image_url)
    end
    def authorize
      return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end
end
