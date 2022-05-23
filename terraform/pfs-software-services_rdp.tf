module "pfs-software-services_rdp" {
  source     = "./modules/repository-collaborators"
  repository = "pfs-software-services_rdp"
  collaborators = [
    {
      github_user  = "MisterSK"
      permission   = "admin"
      name         = "Sanya Khasenye"                                                                                  #  The name of the person behind github_user
      email        = "s.khasenye@kainos.com"                                                                           #  Their email address
      org          = "Kainos"                                                                                          #  The organisation/entity they belong to
      reason       = "Kainos is working on transfering code from a kainos owned repo to an MOJ owned repo for Jenkins" #  Why is this person being granted access?
      added_by     = "Incell Infrastructure team, federico.staiano1@justice.gov.uk"                                    #  Who made the decision to grant them access? e.g. 'Awesome Team <awesome.team@digital.justice.gov.uk>'
      review_after = "2022-09-18"                                                                                      #  Date after which this grant should be reviewed/revoked, e.g. 2021-11-26
    },
    {
      github_user  = "SimonGivan"
      permission   = "admin"
      name         = "Simon Givan"                                                                         #  The name of the person behind github_user
      email        = "s.givan@kainos.com"                                                                  #  Their email address
      org          = "Kainos"                                                                              #  The organisation/entity they belong to
      reason       = "Kainos is working on transfering code from a kainos owned repo to an MOJ owned repo" #  Why is this person being granted access?
      added_by     = "Incell Infrastructure team, federico.staiano1@justice.gov.uk"                        #  Who made the decision to grant them access? e.g. 'Awesome Team <awesome.team@digital.justice.gov.uk>'
      review_after = "2022-09-18"                                                                          #  Date after which this grant should be reviewed/revoked, e.g. 2021-11-26
    },
    {
      github_user  = "Nathanials"
      permission   = "admin"
      name         = "Nathanials Stewart"                                                                              #  The name of the person behind github_user
      email        = "n.stewart@kainos.com"                                                                            #  Their email address
      org          = "Kainos"                                                                                          #  The organisation/entity they belong to
      reason       = "Kainos is working on transfering code from a kainos owned repo to an MOJ owned repo for Jenkins" #  Why is this person being granted access?
      added_by     = "Incell Infrastructure team, federico.staiano1@justice.gov.uk"                                    #  Who made the decision to grant them access? e.g. 'Awesome Team <awesome.team@digital.justice.gov.uk>'
      review_after = "2022-09-18"                                                                                      #  Date after which this grant should be reviewed/revoked, e.g. 2021-11-26
    },
  ]
}
