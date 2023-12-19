#!/bin/bash
#
# Tag the current branch with the next
# version number, push the tag back to the remote.

set -e

# Tag and push
tag=$(semversioner current-version)

git tag -a -m "Tagging for release ${tag}" "${tag}"
git push origin ${tag}