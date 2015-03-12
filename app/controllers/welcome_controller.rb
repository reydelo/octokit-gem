class WelcomeController < ApplicationController

  def index
    @fetcher = GithubFetcher.new
    if params[:user_name]
      @gituser = @fetcher.client.user(params[:user_name])
      @gitrepos = @fetcher.client.repositories(params[:user_name])
    end
  end

end
