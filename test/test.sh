#!/bin/bash -
set -o nounset                              # Treat unset variables as an error
vim '+Vader!*' && echo Success || echo Failure

