class ImageGeneratorController < ActionController::Base
  layout false
  
  def generate
    img_url = CharacterImageGenerator.generate_image(params['id'])
    
    redirect_to img_url
  end
end