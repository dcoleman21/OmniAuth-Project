class RepoFacade
  def self.public_repos(current_user)
    repo_data = RepoService.public_repos(current_user)

    repo_data.map do |repo|
      Repo.new(repo)
    end
  end

  def self.private_repos(current_user)
    repo_data = RepoService.private_repos(current_user)

    repo_data.map do |repo|
      Repo.new(repo)
    end
  end
end
