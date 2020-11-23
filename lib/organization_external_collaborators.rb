class OrganizationExternalCollaborators < GithubGraphQlClient
  attr_reader :login

  def initialize(params)
    @login = params.fetch(:login)
    super(params)
  end

  def list
    @list ||= repositories.inject([]) do |arr, repo|
      external_collaborators(repo).each do |collab|
        arr.push(
          repository: repo.name,
          repo_url: repo.url,
          login: collab.login,
          login_url: collab.url,
        )
      end
      arr
    end
  end

  private

  def repositories
    @repos ||= Repositories.new(
      github_token: github_token,
      login: "ministryofjustice"
    ).list
      .reject(&:archived?)
      .reject(&:disabled?)
      .reject(&:locked?)
  end

  def external_collaborators(repository)
    collaborators(repository.name)
      .reject { |collab| organization.is_member?(collab.login) }
  end

  def collaborators(repo_name)
    RepositoryCollaborators.new(
      github_token: github_token,
      owner: login,
      repository: repo_name
    ).list
  end

  def organization
    @org ||= Organization.new(
      github_token: github_token,
      login: login
    )
  end
end