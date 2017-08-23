#!/bin/bash

# Add 25 ms latency on the outgoing link
tc qdisc add dev eth2 root netem delay 25ms

# If execution reaches this point, the chute will stop running.
exit 0
