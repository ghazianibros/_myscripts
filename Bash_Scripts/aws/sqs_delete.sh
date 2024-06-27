#!/bin/bash

ver="YuniqueV81106 YuniqueV81207 YuniqueV81208 YuniqueV81305 YuniqueV8213 YuniqueV8223 YuniqueV83068 YuniqueV8422 YuniqueV8501 YuniqueV85010 YuniqueV8509 YuniqueV8511 YuniqueV8606 YuniqueV8706 YuniqueV8806 YuniqueV8908 YuniqueV90012 YuniqueV9107 YuniqueV9202 YuniqueV9205 YuniqueV9301 YuniqueV9305 YuniqueV9401 YuniqueV9404 YuniqueV9501 YuniqueV9506 YuniqueV9507 YuniqueV9607 YuniqueV9705 YuniqueV9805 YuniqueV9909 "

for t in $ver
do
    echo $t
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-image
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-other
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-report

    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-stg
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-stg-image
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-stg-other
    aws sqs delete-queue --profile gt-prd --region eu-west-1 --queue-url https://sqs.eu-west-1.amazonaws.com/704489639910/gds-mt-qa-$t-stg-report
done