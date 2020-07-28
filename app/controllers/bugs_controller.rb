class BugsController < ApplicationController
	def create
    	@project = Project.find(params[:project_id])
    	@bug = @project.bugs.create(bug_params)
    	redirect_to project_path(@project)
  end
 	def destroy
    	# @article = Article.find(params[:article_id])
    	# @bug = Bug.find(params[:id])
    	# @bug.destroy
    	# redirect_to book_url(@bug.book_id)
  end
  private
    def bug_params
      params.require(:bug).permit(:title, :body, :status)
    end
end
