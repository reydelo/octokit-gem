class ReposController < ApplicationController

  def index
    @fetcher = GithubFetcher.new
  end


end
