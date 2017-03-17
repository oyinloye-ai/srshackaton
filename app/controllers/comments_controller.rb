class CommentsController < ApplicationController
	before_action :find_commentable

	def index
		@comments = Comment.all
	end

	def create
		@comment = @commentable.comments.new comment_params
		@comment.user_id = current_user.id
		if @comment.save
			redirect_to :back, notice: "Your comment was saved"
		else
			redirect_to :back, notice: "Your comment wasn't posted"
		end
	end
	

	def destroy
		 @commentable.destroy
		    respond_to do |format|
		      format.html { redirect_to :back, notice: 'Comment was successfully destroyed.' }
		      format.json { head :no_content }
		    end
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

	def find_commentable
		@commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
		@commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
	end

end
