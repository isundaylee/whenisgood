class ResponsesController < ApplicationController
  def create
    Response.create!(content: JSON.parse(response_params[:content]))

    redirect_to root_path(success: true)
  end

  private
    def response_params
      params.require(:response).permit(:content)
    end
end
