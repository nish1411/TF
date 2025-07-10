
module "account" {
  for_each = {
    for acc in var.accounts :
    acc.account_name => {
      account_name  = acc.account_name
      account_email = acc.account_email
      ou_name       = lookup(acc, "ou_name", "")  # ✅ fallback if missing
    }
  }

  source         = "../modules/account"
  account_name   = each.value.account_name
  account_email  = each.value.account_email
  ou_name        = each.value.ou_name
}