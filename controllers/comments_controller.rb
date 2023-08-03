class CommentsController < ApplicationController
def create 
    @page = page.find(params[:page_id])
    @comment = @page.comment.build(comment_params)
   
    if @comments.save
      redirect_to @page, notice: 'commet create'
    else
    redirect_to @page, alert: 'error'    
    end    


private

def comment_params
   params.require(:comment).permit(:content)
end    

end    