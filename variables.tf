variable "generative_ai_agent_tools_lookup" {
  description = <<EOT
Map of generative_ai_agent_tools_lookup, attributes below
Optional:
    - agent_id
    - compartment_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    agent_id       = optional(string)
    compartment_id = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

