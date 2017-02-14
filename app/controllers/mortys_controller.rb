class MortysController < ApplicationController

  def show
    @morty = Unirest.get("http://localhost:3000/api/v1/ricks/#{params[:id]}.json").body
    render "show.html.erb"
  end

  def index
    @morty = Unirest.get("http://localhost:3000/api/v1/ricks.json").body
    render "index.html.erb"
  end
end
