module "YJAF-POC" {
  source     = "./modules/repository-collaborators"
  repository = "YJAF-POC"
  collaborators = [
    {
      github_user  = "gregi2n"
      permission   = "admin"
      name         = "Greg Whiting"
      email        = "greg.whiting@northgateps.com"
      org          = "Northgate"
      reason       = "Part of the Northgate supplier team for the YJB YJAF system"
      added_by     = "<gareth.davies@digital.justice.gov.uk> on behalf of the YJB"
      review_after = "2022-12-13"
    },
    {
      github_user  = "ttipler"
      permission   = "admin"
      name         = "Thomas Tipler"
      email        = "thomas.tipler@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "Devops guys need access to make app/infra changes"
      added_by     = "Greg Whiting - greg.whiting@northgateps.com"
      review_after = "2023-02-24"
    },
    {
      github_user  = "oliviergaubert"
      permission   = "admin"
      name         = "Olivier Gaubert"
      email        = "olivier.gaubert@necsws.com"
      org          = "NEC"
      reason       = "Part of the Northgate supplier team who are now NEC for the YJB YJAF system"
      added_by     = "Jon Dent jon.dent@justice.gov.uk"
      review_after = "2022-12-31"
    },
    {
      github_user  = "AndrewTRichards"
      permission   = "admin"
      name         = "Andrew Richards"
      email        = "a.t.richards@btopenworld.com"
      org          = "NEC"
      reason       = "New starter (well returning Dev) working on all YJAF projects etc"
      added_by     = "Jon Dent jon.dent@justice.gov.uk"
      review_after = "2023-05-26"
    },
  ]
}
