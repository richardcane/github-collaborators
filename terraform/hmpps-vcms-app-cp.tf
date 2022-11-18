module "hmpps-vcms-app-cp" {
  source     = "./modules/repository-collaborators"
  repository = "hmpps-vcms-app-cp"
  collaborators = [
    {
      github_user  = "simoncreasy-civica"
      permission   = "push"
      name         = "Simon Creasy"
      email        = "simon.creasy@civica.co.uk"
      org          = "Civica"
      reason       = "Civica developer for Victims Case Management System"
      added_by     = "Probation WebOps team, probation-webops@digital.justice.gov.uk"
      review_after = "2022-12-27"
    },
    {
      github_user  = "sim-barnes"
      permission   = "push"
      name         = "Simon Barnes"
      email        = "simon.barnes@civica.co.uk"
      org          = "Civica"
      reason       = "Civica developer for Victims Case Management System"
      added_by     = "Probation WebOps team, probation-webops@digital.justice.gov.uk"
      review_after = "2022-12-27"
    },
    {
      github_user  = "miriamgo-civica"
      permission   = "push"
      name         = "Miriam Gomez-Orozco"
      email        = "Miriam.Gomez-Orozco@civica.co.uk"
      org          = "civica"
      reason       = "Civica developer for Victims Case Management System"
      added_by     = "Probation WebOps team, probation-webops@digital.justice.gov.uk"
      review_after = "2022-12-27"
    },
  ]
}
