class Admin::SnippetsController < Admin::BaseController
  helper_method :collection, :resource

  def index
  end

  def edit
  end

  def update
    if resource.update_attributes(snippet_params)
      redirect_to admin_snippets_url
    else
      render :edit
    end
  end

  protected

  def collection
    @snippets ||= Snippet.all
  end

  def resource
    @snippet ||= Snippet.find(params[:id])
  end

  private

  def snippet_params
    params.require(:snippet).permit(:content, :description)
  end
end
