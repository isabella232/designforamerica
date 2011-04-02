class HomeController < ApplicationController
  def index
    render :layout=>"homepage.html.erb"
  end

end
