data "oci_generative_ai_agent_tools" "generative_ai_agent_tools_lookup" {
  for_each = var.generative_ai_agent_tools_lookup

  agent_id       = each.value.agent_id
  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

