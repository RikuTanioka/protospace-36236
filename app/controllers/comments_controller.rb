class CommentsController < ApplicationController
  def create
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
