module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
      AccountEmail              = "abdul.kunnummal+sandbox@gmail.com"
      AccountName               = "sandbox-01"
      ManagedOrganizationalUnit = "Lean AFT (ou-1fbv-2z6gbko8)"
      SSOUserEmail              = "akunnummal@cc-demos.com"
      SSOUserFirstName          = "Sandbox"
      SSOUserLastName           = "01"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
