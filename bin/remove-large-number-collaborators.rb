#!/usr/bin/env ruby

require_relative "../lib/github_collaborators"

login = "ministryofjustice"
base_url = "https://github.com/ministryofjustice/github-collaborators/blob/main/terraform"

# Create a list of users that are outside collaborators ie not MoJ Organisation Members
outside_collaborator_list = GithubCollaborators::OrganizationOutsideCollaborators.new(
  login: login,
  base_url: base_url
).list

# Prepare payload for report
output = {
  data: outside_collaborator_list,
  updated_at: Time.now.strftime("%Y-%m-%d %H:%M:%S")
}

# Loop through the list of outside collaborators
outside_collaborator_list.each do |x|
  # If issues include review date being within a month, create an issue on the repo
  if x["issues"].include? "Review after date is within a month"
    params = {
      owner: login,
      repository: x["repository"],
      github_user: x["login"]
    }
    # Create issue
    GithubCollaborators::IssueCreator.new(params).create_review_date
  end
end

outside_collaborator_list.each do |collaborator|
  repository = collaborator.dig("repository")
  github_user = collaborator.dig("login")

  puts "Removing collaborator #{github_user} from repository #{repository}"

  params = {
    owner: ENV.fetch("OWNER"),
    repository: repository,
    github_user: github_user
  }

  # We must create the issue before removing access, because the issue is
  # assigned to the removed collaborator, so that they (hopefully) get a
  # notification about it.
  GithubCollaborators::IssueCreator.new(params).create
  sleep 5
  GithubCollaborators::AccessRemover.new(params).remove
end