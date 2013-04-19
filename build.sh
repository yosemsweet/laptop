#!/bin/bash

distro="$1"
target="./linux-$distro"

add_lib() {
  local lib="$1"

  cat >> "$target" << EOF
#
# Source: lib/${lib}.sh
#
###

$(cat "lib/${lib}.sh")

###
EOF
}

echo "Generating ${target}..."

cat > $target << EOF
#!/bin/bash
#
# laptop setup script for $distro distributions
#
# Generated: $(date)
#
###
EOF

add_lib 'support'
add_lib "$distro"
add_lib 'main'
