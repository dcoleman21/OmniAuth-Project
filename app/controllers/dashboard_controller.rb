class DashboardController < ApplicationController
  def show
    @public_repos = RepoFacade.public_repos(current_user)
    @private_repos = RepoFacade.private_repos(current_user)
  end
end
