class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, ]

  def home
  	@body_image = "body-image-home"
  end
end
