#!/bin/bash
for f in 0 288 3600 7200 10800 14400 18000 10000000; do
    ./tephra2-2012 inputs/ftt_trial_1/ftt_${f}.conf inputs/ftt_trial_1/good_grid.txt inputs/noWind > inputs/ftt_trial_1/ftt_${f}_out.txt
done
