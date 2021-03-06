class CommentsController < ApplicationController
  before_action :require_user

  def new
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.find(params[:recipe_id])
    @comment = @recipe.comment.build
  end

  def create
    @user = User.find(params[:user_id])
    @recipe =  @user.recipes.find(params[:recipe_id])
    @comment = @recipe.comment.create(comment: params[:comment], recipe_id: params[:recipe_id], user_id: params[:format])
    if @comment.save
      flash[:success] = 'comment was successfully added'
      redirect_to root_path(@user.id)
    end
  end


end