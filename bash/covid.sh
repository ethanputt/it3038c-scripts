#!/bin/bash
# This script downloads covid data and displays it

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
TODAY=$(date)

## Lab 2 Ethan Putt Additions
TOTAL_RESULTS=$(echo $DATA | jq '.[0].totalTestResults')
NEGATIVE=$(echo $DATA | jq '.[0].negative')
TOTAL_HOSPITAL=$(echo $DATA | jq '.[0].hospitalizedCurrently')
TOTAL_ICU=$(echo $DATA | jq '.[0].inIcuCumulative')


echo "On $TODAY, there are a total of $TOTAL_RESULTS test results. $POSITIVE of which are positive COVID test results and $NEGATIVE are negative test results. Of the $POSITIVE positive test results, there are $TOTAL_HOSPITAL that have been hospitalized with $TOTAL_ICU being placed in the intensive care unit."
