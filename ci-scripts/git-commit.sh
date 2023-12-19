#!/bin/bash

# Commit back to the repository
# version number, push the tag back to the remote.

set -e

# Tag and push
tag=$(semversioner current-version)

git pull
git add .
git commit -m "Update files for new version '${tag}' [skip ci]"
git push origin ${GITHUB_REF}