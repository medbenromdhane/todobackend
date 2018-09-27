#!/bin/bash
# Activate virtual environment
. /appenv/bin/activate

# # Download and Install application test requirements
# pip install -r requirements_test.txt

# Download requirements to build cache for test and build stages consistancies
pip download -d /build -r requirements_test.txt --no-input

# Install application test requirements forl the build cache
pip install --no-index -f /build -r requirements_test.txt

# Run test.sh arguments
exec $@