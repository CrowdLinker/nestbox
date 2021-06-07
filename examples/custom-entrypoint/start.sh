#!/bin/bash
#---------------------------#
#     Setup Entrypoint      #
#---------------------------#

# Maybe wait for a service to start
# sleep 20 | echo 'Waiting for some instance to start...'

# Start app
yarn start:dev --preserveWatchOutput
