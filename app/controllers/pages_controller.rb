class PagesController < ApplicationController
  def index
  end

  def ocr
    data = Unirest.post(
      'https://api.ocr.space/parse/image',
      parameters: {
        apikey: ENV['OCR_API_KEY'],
        file: params[:imageData]
      }
    ).body
    puts '*' * 50
    puts data
    puts '*' * 50
    render json: {success: true, data: data}
  end
end
