class HomeController < ApplicationController
  def index
    render :layout=>"application.html.erb" # without this line, Rails renders to this template by default anyway
  end

end
