#!/usr/bin/env bash

set -e

echo "Validating inputs"

ACCOUNT_ID="$1"
APP_ID="$2"
BINARY_PATH="$3"
SERVICE_ACCOUNT_BASE64="$4"


if [[ -z "${BINARY_PATH}" ]]; then
  echo "::error::Error: 'binary_path' is a required input."
  exit 1
fi

if [[ ! -f "${BINARY_PATH}" ]]; then
  echo "::error::Error: 'binary_path' is not a valid file."
  exit 1
fi

if [[ -z "${ACCOUNT_ID}" ]]; then
  echo "::error::Error: 'account_id' is a required input."
  exit 1
fi

if [[ -z "${APP_ID}" ]]; then
  echo "::error::Error: 'app_id' is a required input."
  exit 1
fi

if [[ -z "${SERVICE_ACCOUNT_BASE64}" ]]; then
  echo "::error::Error: 'service_account_base64' is a required input."
  exit 1
fi
