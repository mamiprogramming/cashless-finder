class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
       redirect_to venue_path(@comment.venue)
    else
      @venue = @comment.venue
      @comments = @venue.comments
      render "venues/show" 
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to root_path
  end

  private
  def comment_params
    permitted_params = params.require(:comment).permit(:text, :cashless_id)
    if params[:comment][:image].present?
      permitted_params.merge(user_id: current_user.id, venue_id: params[:venue_id], image: params[:comment][:image])
    else
      permitted_params.merge(user_id: current_user.id, venue_id: params[:venue_id])
    end
  end
end
