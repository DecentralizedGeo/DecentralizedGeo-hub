#!/bin/bash

set -e  # Exit on error

# List of repositories and their respective target directories
REPOS=(
    "git@github.com:decentralizedgeo/astral-api.git docs/api"
    # Add more repositories as needed
)

# Temporary directory for cloning
TEMP_DIR="temp-docs"

# Ensure the main docs directory exists
mkdir -p docs

# Iterate over each repository and process it
for REPO_ENTRY in "${REPOS[@]}"; do
    # Split repo URL and target directory
    REPO_URL=$(echo "$REPO_ENTRY" | awk '{print $1}')
    TARGET_DIR=$(echo "$REPO_ENTRY" | awk '{print $2}')

    echo "Syncing documentation from $REPO_URL into $TARGET_DIR..."

    # Remove old docs if they exist
    rm -rf "$TARGET_DIR"

    # Clone the external repository into a temporary location
    git clone --depth=1 "$REPO_URL" "$TEMP_DIR"

    # Check if the expected 'docs' directory exists
    if [ -d "$TEMP_DIR/docs" ]; then
        # Move the documentation files to the target location
        mv "$TEMP_DIR/docs" "$TARGET_DIR"
        echo "Successfully updated $TARGET_DIR"
    else
        echo "Error: 'docs' directory not found in $REPO_URL. Skipping."
    fi

    # Clean up the temporary directory
    rm -rf "$TEMP_DIR"
done

echo "All documentation sources have been updated."