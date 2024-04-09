# Print out all recipes when running `just`
_default:
    @just --list

# Variables
output := "themes"
whiskers_cmd := "whiskers"
template_path := "mpv.tera"

# Create the output directory
setup:
    # Make the theme directories
    mkdir -p {{output}}/latte
    mkdir -p {{output}}/frappe
    mkdir -p {{output}}/macchiato
    mkdir -p {{output}}/mocha

    # Build the directory structure for one of the themes
    mkdir -p {{output}}/latte/rosewater/script-opts
    mkdir -p {{output}}/latte/flamingo/script-opts
    mkdir -p {{output}}/latte/pink/script-opts
    mkdir -p {{output}}/latte/mauve/script-opts
    mkdir -p {{output}}/latte/red/script-opts
    mkdir -p {{output}}/latte/maroon/script-opts
    mkdir -p {{output}}/latte/peach/script-opts
    mkdir -p {{output}}/latte/yellow/script-opts
    mkdir -p {{output}}/latte/green/script-opts
    mkdir -p {{output}}/latte/teal/script-opts
    mkdir -p {{output}}/latte/sky/script-opts
    mkdir -p {{output}}/latte/sapphire/script-opts
    mkdir -p {{output}}/latte/blue/script-opts
    mkdir -p {{output}}/latte/lavender/script-opts

    # Copy the directory structure for the other themes
    cp -vr {{output}}/latte/* {{output}}/frappe
    cp -vr {{output}}/latte/* {{output}}/macchiato
    cp -vr {{output}}/latte/* {{output}}/mocha

# Remove all files in the output directory
clean:
    rm -rfv {{output}}

# Generate all four flavors
all: setup
    {{whiskers_cmd}} {{template_path}}
