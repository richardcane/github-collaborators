module "staff-device-docker-base-images" {
  source     = "./modules/repository-collaborators"
  repository = "staff-device-docker-base-images"
  collaborators = [
    {
      github_user  = "Themitchell"
      permission   = "admin"
      name         = "Andy Mitchell"
      email        = "andrew.mitchell@madetech.com"
      org          = "Made Tech Ltd"
      reason       = "PTTP Tech Team"
      added_by     = "richard.baguley@digital.justice.gov.uk"
      review_after = "2021-09-01"
    },
    {
      github_user  = "richrace"
      permission   = "admin"
      name         = "Richard Race"
      email        = "richard.race@madetech.com"
      org          = "Made Tech Ltd"
      reason       = "PTTP Tech Team"
      added_by     = "richard.baguley@digital.justice.gov.uk"
      review_after = "2021-10-31"
    }
  ]
}
