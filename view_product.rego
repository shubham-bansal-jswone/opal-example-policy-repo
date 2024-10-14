package view.product

# Default deny policy.
default allow = false

# Allow access if the user has the 'view_products' authority.
allow {
    user_has_authority("view_products")
}

# Helper function to check if the user has a specific authority.
user_has_authority(required_authority) {
    some authority
    input.authorities[_] == required_authority
}
