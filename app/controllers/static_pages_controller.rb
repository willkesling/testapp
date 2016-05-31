class StaticPagesController < ApplicationController

	def show
		if valid_page?
		render template: "static_pages/#{params[:page]}"
	else
		render file: "public/404.html", status: :not_found
	end
	end

  def home
  end

  def help
  end



  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/static_pages/#{params[:pages]}.html.erb"))
  end
end
