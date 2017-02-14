class MortysController < ApplicationController

  def show
    @morty = Unirest.get("http://localhost:3000/api/v1/ricks/#{params[:id]}.json").body
    render "show.html.erb"
  end

  def index
    @morty = Unirest.get("http://localhost:3000/api/v1/ricks.json").body
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @morty = Unirest.post("http://localhost:3000/api/v1/ricks.json", headers:{"Accept" => "application/json"}, parameters:{character: params[:character], quote: params[:quote]}).body
    redirect_to "/morty/#{@morty["id"]}"
  end

  def update
    @morty = Unirest.patch("http://localhost:3000/api/v1/ricks/#{params[:id]}.json", headers:{"Accept" => "application/json"}, parameters:{character: params[:character], quote: params[:quote]}).body
    redirect_to "/morty/#{@morty["id"]}"
  end

  def destroy
    @morty = Unirest.delete("http://localhost:3000/api/v1/ricks/#{params[:id]}.json", headers:{"Accept" => "application/json"}, parameters:{character: params[:character], quote: params[:quote]}).body

    redirect_to "/morty/#{@morty["id"]}"
  end
end
