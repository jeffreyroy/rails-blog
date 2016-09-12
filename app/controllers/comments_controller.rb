class CommentsController < ApplicationController

  http_basic_authenticate_with name: "n", password: "n", only: [:destroy]


  def create
    @article = Article.find(params[:article_id])
    # To create comment, use method generated from association
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
