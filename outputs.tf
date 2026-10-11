output "wafv2_api_keys_api_key" {
  description = "Map of api_key values across all wafv2_api_keys, keyed the same as var.wafv2_api_keys"
  value       = { for k, v in aws_wafv2_api_key.wafv2_api_keys : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
  sensitive   = true
}
output "wafv2_api_keys_region" {
  description = "Map of region values across all wafv2_api_keys, keyed the same as var.wafv2_api_keys"
  value       = { for k, v in aws_wafv2_api_key.wafv2_api_keys : k => v.region if v.region != null && length(v.region) > 0 }
}
output "wafv2_api_keys_scope" {
  description = "Map of scope values across all wafv2_api_keys, keyed the same as var.wafv2_api_keys"
  value       = { for k, v in aws_wafv2_api_key.wafv2_api_keys : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "wafv2_api_keys_token_domains" {
  description = "Map of token_domains values across all wafv2_api_keys, keyed the same as var.wafv2_api_keys"
  value       = { for k, v in aws_wafv2_api_key.wafv2_api_keys : k => v.token_domains if v.token_domains != null && length(v.token_domains) > 0 }
}

