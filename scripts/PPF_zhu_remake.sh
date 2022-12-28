#!/bin/bash

for ((i=0; i<5; i++))
do
{
    if [ $i -eq 0 ]; then
        (./bin/perceptron-no-spp_dev-lru-1core -warmup_instructions 200000000 -simulation_instructions 1000000000  -traces ./scratch/user/djimenez/champsim-traces/speccpu2017/xz/603.bwaves_s/603.bwaves_s-1080B.champsimtrace.xz) &> results_1000M_zhu/603.bwaves_s-1080B-perceptron-no-spp_dev-lru-1core.txt
    elif [ $i -eq 1 ]; then
        (./bin/perceptron-no-spp_dev-lru-1core -warmup_instructions 200000000 -simulation_instructions 1000000000  -traces ./scratch/user/djimenez/champsim-traces/speccpu2017/xz/605.mcf_s/605.mcf_s-1152B.champsimtrace.xz) &> results_1000M_zhu/605.mcf_s-1152B-perceptron-no-spp_dev-lru-1core.txt
    elif [ $i -eq 2 ]; then
        (./bin/perceptron-no-spp_dev-lru-1core -warmup_instructions 200000000 -simulation_instructions 1000000000  -traces ./scratch/user/djimenez/champsim-traces/speccpu2017/xz/607.cactuBSSN_s/607.cactuBSSN_s-2421B.champsimtrace.xz) &> results_1000M_zhu/607.cactuBSSN_s-2421B-perceptron-no-spp_dev-lru-1core.txt
    elif [ $i -eq 3 ]; then
        (./bin/perceptron-no-spp_dev-lru-1core -warmup_instructions 200000000 -simulation_instructions 1000000000  -traces ./scratch/user/djimenez/champsim-traces/speccpu2017/xz/623.xalancbmk_s/623.xalancbmk_s-10B.champsimtrace.xz) &> results_1000M_zhu/623.xalancbmk_s-10B-perceptron-no-spp_dev-lru-1core.txt
    elif [ $i -eq 4 ]; then
        (./bin/perceptron-no-spp_dev-lru-1core -warmup_instructions 200000000 -simulation_instructions 1000000000  -traces ./scratch/user/djimenez/champsim-traces/speccpu2017/xz/649.fotonik3d_s/649.fotonik3d_s-10881B.champsimtrace.xz) &> results_1000M_zhu/649.fotonik3d_s-10881B-perceptron-no-spp_dev-lru-1core.txt
    fi
}&
done
