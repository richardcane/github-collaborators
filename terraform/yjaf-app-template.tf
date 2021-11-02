module "yjaf-app-template" {
  source     = "./modules/repository-collaborators"
  repository = "yjaf-app-template"
  collaborators = [
    {
      github_user  = "gregi2n"
      permission   = "admin"
      name         = "Greg Whiting"
      email        = "greg.whiting@northgateps.com"
      org          = "Northgate"
      reason       = "Part of the Northgate supplier team for the YJB YJAF system"
      added_by     = "<gareth.davies@digital.justice.gov.uk> on behalf of the YJB"
      review_after = "2021-12-11"
    },
    {
      github_user  = "JWGNPS"
      permission   = "push"
      name         = "James Grunewald"
      email        = "james.grunewald@northgateps.com"
      org          = "NPS (northgate)"
      reason       = "Part of the Northgate supplier team for the YJB YJAF system"
      added_by     = "Greg Whiting <greg.whiting@northgateps.com> Devops for northgate"
      review_after = "2022-01-27"
    },
    {
      github_user  = "VasilDimitrov22"
      permission   = "push"
      name         = "Vasil Dimitrov"
      email        = "vasil.dimitrov@northgateps.com"
      org          = "NPS (northgate)"
      reason       = "Part of the Northgate supplier team for the YJB YJAF system"
      added_by     = "Greg Whiting <greg.whiting@northgateps.com> Devops for northgate"
      review_after = "2021-12-31"
    },
    {
      github_user  = "waheedanjum"
      permission   = "push"
      name         = "Muhammad Waheed Anjum"
      email        = "muhammad.anjum@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "YJAF developer. Needing access to the work on BackEnd coding Tasks"
      added_by     = "Gareth Davies <gareth.davies@digital.justice.gov.uk"
      review_after = "2021-12-31"
    },
    {
      github_user  = "djv72"
      permission   = "push"
      name         = "David Vincent"
      email        = "david.vincent@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "YJAF developer. Needing access to the work on BackEnd coding Tasks"
      added_by     = "Gareth Davies <gareth.davies@digital.justice.gov.uk"
      review_after = "2021-12-31"
    },
    {
      github_user  = "InFlamesForever"
      permission   = "push"
      name         = "Richard Came"
      email        = "richard.came@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "YJAF developer. Needing access to the work on BackEnd coding Tasks"
      added_by     = "Gareth Davies <gareth.davies@digital.justice.gov.uk"
      review_after = "2022-08-27"
    },
    {
      github_user  = "richardbradwell"
      permission   = "push"
      name         = "Richard Bradwell"
      email        = "richard.bradwell@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "YJAF developer. Needing access to the work on BackEnd coding Tasks"
      added_by     = "Jo Harvey <joanna.harvey@necsws.com"
      review_after = "2022-10-05"
    },
    {
      github_user  = "brbaje-dev"
      permission   = "admin"
      name         = "Ben Bajek"
      email        = "ben.bajek@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "Devops guys need access to make app/infra changes"
      added_by     = "Greg Whiting - greg.whiting@northgateps.com"
      review_after = "2022-12-31"
    },
    {
      github_user  = "ttipler"
      permission   = "admin"
      name         = "Thomas Tipler"
      email        = "thomas.tipler@necsws.com"
      org          = "NEC Software Solutions"
      reason       = "Devops guys need access to make app/infra changes"
      added_by     = "Greg Whiting - greg.whiting@northgateps.com"
      review_after = "2022-12-31"
    },
  ]
}
