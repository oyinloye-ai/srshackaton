class Api::V1::CommentsController < Api::V1::BaseController
	before_action :find_commentable

	def index
		@comments = @commentable.comments.all
		respond_with @comments
	end

	def create
		@comment = @commentable.comments.new comment_params
		@comment.user_id = current_user.id
		if @comment.save
			respond_with @comment
		else
			respond_with @comment.errors
		end
	end


	def show
		respond_with @commentable.comments.all.includes(:user).as_json(include: { user: { only: [:email,:image]}})
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
