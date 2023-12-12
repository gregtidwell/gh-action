#!/bin/sh

if [ -z "${INPUT_WHO_TO_GREET}" ]; then
  echo "Error: 'who_to_greet' is a required input."
  echo "::set-output name=missing_input::true"
  exit 1
fi

# Rest of your action logic here
