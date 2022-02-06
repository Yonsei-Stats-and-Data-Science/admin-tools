#!/bin/bash
scontrol update NodeName=gpu-compute State=DOWN Reason="undraining"
scontrol update NodeName=cpu-compute State=DOWN Reason="undraining"
scontrol update NodeName=gpu-compute State=RESUME
scontrol update NodeName=cpu-compute State=RESUME
