module "cloud-platform-environments" {
  source     = "./modules/repository-collaborators"
  repository = "cloud-platform-environments"
  collaborators = [
    {
      github_user  = "bsi0714"
      permission   = "push"
      name         = "Daniel Elliott"
      email        = "Daniel.elliott@bsigroup.com"
      org          = "BSI"
      reason       = "CICA IT Health Check"
      added_by     = "adrian.roworth@digital.justice.gov.uk"
      review_after = "2023-10-13"
    },
    {
      github_user  = "jp-bsi"
      permission   = "push"
      name         = "Joe Phee"
      email        = "joseph.phee@bsigroup.com"
      org          = "BSI"
      reason       = "CICA IT Health Check"
      added_by     = "adrian.roworth@digital.justice.gov.uk"
      review_after = "2023-10-13"
    },
    {
      github_user  = "hopebaileywithers"
      permission   = "push"
      name         = "Hope Bailey-Withers"
      email        = "hope.bailey-withers@informed.com"
      org          = "Informed Solutions"
      reason       = "AWS CP CLI access"
      added_by     = "adrian.roworth@digital.justice.gov.uk"
      review_after = "2024-09-22"
    },
    {
      github_user  = "msenkiw"
      permission   = "push"
      name         = "Michael Senkiw"
      email        = "michael.senkiw@informed.com"
      org          = "Informed Solutions"
      reason       = "AWS CP CLI access"
      added_by     = "adrian.roworth@digital.justice.gov.uk"
      review_after = "2024-09-22"
    },
    {
      github_user  = "dr103"
      permission   = "push"
      name         = "Daniel Rex"
      email        = "daniel.rex@informed.com"
      org          = "Informed Solutions"
      reason       = "AWS CP CLI access"
      added_by     = "adrian.roworth@digital.justice.gov.uk"
      review_after = "2024-09-22"
    },
    {
      github_user  = "jack-burt-is"
      permission   = "push"
      name         = "Jack Burt"
      email        = "jack.burt@informed.com"
      org          = "Informed Solutions"
      reason       = "AWS CP CLI access"
      added_by     = "adrian.roworth@digital.justice.gov.uk"
      review_after = "2024-09-22"
    },
  ]
}