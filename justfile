# Print out all recipes when running `just`
_default:
    @just --list

# Variables
output := "themes"
whiskers_cmd := "whiskers"
template_path := "mpv.tera"

# Remove all files in the output directory
clean:
    rm -rfv {{output}}

# Generate all four flavors
all:
    {{whiskers_cmd}} {{template_path}}
