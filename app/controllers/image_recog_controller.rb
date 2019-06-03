class ImageRecogController < ApplicationController
  def index
    # @image = AiAnalysisLog.new

  end

  def create
    @image  = AiAnalysisLog.new(image_params)
    if @image.save
      respond_to do |format|
        format.html { redirect_to :root }
        format.json { render json: @image}
      end
    else
      render :index
    end
  end


  private

  def image_params
    params.require(:ai_analysis_log).permit(:image)
  end

end
