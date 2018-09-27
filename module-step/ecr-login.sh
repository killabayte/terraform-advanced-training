#!/bin/bash
REGION="us-west-2"
`aws ecr get-login --no-include-email --region ${REGION}`
