class Admin::CommentsController > ApplicationController
    def index
        @comments = Comment.all
    end

    def show
        comment_id = params[:id]
        @comment = Comment.find(comment_id)
    end

    def new
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.new(comment_params)
    
        if @comment.save
          redirect_to @comment
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @comment = Comment.find(params[:id])
      end
    
      def update
        @comment = Comment.find(params[:id])
    
        if @comment.update(comment_params)
          redirect_to @comment
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      private
        def comment_params
          params.require(:comment).permit(:title,:body)
        end
end