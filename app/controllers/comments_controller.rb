class CommentsController < ApplicationController
  # GET /comments/new
  def new
    @comment = Comment.new
  end


  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to project_url(@comment.project), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:message, :user_id, :project_id)
    end
end
