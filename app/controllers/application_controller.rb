class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def dandan
  	render html: "I'm dandan!"
  end
end
