class CommentsController < ApplicationController
	def create
		@product = Product.find(comment_params[:product_id])
		@comment = Comment.new(comment_params)
		if current_user
			@comment.user_id = current_user.id
			@comment.product_id = @product.id
		end
		 respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment }
      else
        format.html { redirect_to @product, notice: 'Comment Error' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
	end

	private
  def comment_params
    params.require(:comment).permit(:description, :user_id, :product_id)
  end
end
