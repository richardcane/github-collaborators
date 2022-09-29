#!/usr/bin/env ruby

require_relative "../lib/github_collaborators"

login = "ministryofjustice"
base_url = "https://github.com/ministryofjustice/github-collaborators/blob/main/terraform"

# Create a list of users that are outside collaborators ie not MoJ Organisation Members
outside_collaborator_list = GithubCollaborators::OrganizationOutsideCollaborators.new(
  login: login,
  base_url: base_url
).list

# Loop through the list of outside collaborators
outside_collaborator_list.each do |x|
  params = {
    owner: login,
    repository: x["repository"],
    github_user: x["login"]
  }

  # If issue has been raised and a grace period has expired then close issue
  GithubCollaborators::IssueCreator.new(params).close_expired_issues

  # Create an issue on the repo when "Review after date is within a month" is true
  if x["issues"].include? "Review after date is within a month"
    # Create issue
    GithubCollaborators::IssueCreator.new(params).create_review_date
  end

  # Remove unknown collaborators
  if x["defined_in_terraform"] == false
    puts "Removing collaborator #{x["login"]} from repository #{x["repository"]}"
    # We must create the issue before removing access, because the issue is
    # assigned to the removed collaborator, so that they (hopefully) get a
    # notification about it.
    GithubCollaborators::IssueCreator.new(params).create
    sleep 3
    GithubCollaborators::AccessRemover.new(params).remove
  end

  # To Do: Add code here to create slack alert if 'Review after date has passed' is true (once)
  # To Do: Create a PR with the user removed from the repos when 'Review after date has passed' is true (once)
  # To Do: Add code here to create slack alert if 'Review after date is within a month' is true (once)
  # To Do: Add code here to create slack alert if 'Review after date is within a week' is true (once)
end
