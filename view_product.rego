package view.product
import rego.v1
# Default deny policy.
default allow = false

# Allow access if the user has the 'view_products' authority.
allow if{
    user_has_authority("view_products")
}

# Helper function to check if the user has a specific authority.
user_has_authority(required_authority) if{
    some authority
    input.authorities[_] == required_authority
}
