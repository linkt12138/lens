#!/bin/bash

func="srmf_based_pred"

num_jobs=10
cnt=0

## DAG 
rm tmp.$func.dag*
echo "" > tmp.$func.dag

# for filename in "TM_Airport_period5_" "tm.sort_ips.ap.gps.5.txt.3600." "tm.select_matrix_for_id-Assignment.txt.60." "tm.sort_ips.ap.country.txt.3600." "tm.sort_ips.ap.bgp.8.txt.3600." "tm.sort_ips.ap.bgp.10.sub_CN.txt.3600." ; do
# for filename in "tm.sort_ips.ap.gps.1.sub_CN.txt.3600."; do
# for filename in "tm.sort_ips.ap.country.txt.3600."  "tm.sort_ips.ap.bgp.8.txt.3600." "tm.sort_ips.ap.bgp.10.sub_CN.txt.3600."; do

# for filename in "tm_download.sort_ips.ap.bgp.sub_CN.txt.3600.top400." "tm_upload.sort_ips.ap.bgp.sub_CN.txt.3600.top400." "tm_download.sort_ips.ap.country.txt.3600.top400." "tm_upload.sort_ips.ap.country.txt.3600.top400." "tm_download.sort_ips.ap.gps.1.sub_CN.txt.3600.top400." "tm_upload.sort_ips.ap.gps.1.sub_CN.txt.3600.top400." "tm_download.sort_ips.ap.gps.5.txt.3600.top400." "tm_upload.sort_ips.ap.gps.5.txt.3600.top400."; do
for filename in "tm_download.sort_ips.ap.bgp.sub_CN.txt.3600.top400."; do

    # #############
    # if [[ ${filename} == "TM_Airport_period5_" ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_process_4sq\/TM\/"
    #     num_frames=12
    #     width=300
    #     height=300

    #     ranks=(1 2 3 5 7 10 20 30 50)
    # fi
    # #############
    # if [[ ${filename} == "tm.select_matrix_for_id-Assignment.txt.60." ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_huawei_3g\/signaling_tm\/"
    #     num_frames=12
    #     width=28
    #     height=28

    #     ranks=(1 2 3 5 7 10)
    # fi
    # #############
    # if [[ ${filename} == "tm.sort_ips.ap.country.txt.3600." ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_sjtu_wifi\/tm\/"
    #     num_frames=7
    #     width=400
    #     height=400

    #     ranks=(1 2 3 5 10 20 30)
    # fi
    # if [[ ${filename} == "tm.sort_ips.ap.gps.5.txt.3600." ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_sjtu_wifi\/tm\/"
    #     num_frames=7
    #     width=738
    #     height=738

    #     ranks=(1 2 3 5 10 20 30)
    # fi
    # if [[ ${filename} == "tm.sort_ips.ap.gps.1.sub_CN.txt.3600." ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_sjtu_wifi\/tm\/"
    #     num_frames=7
    #     width=410
    #     height=410

    #     ranks=(1 2 3 5 10 20 30)
    # fi
    # if [[ ${filename} == "tm.sort_ips.ap.bgp.8.txt.3600." ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_sjtu_wifi\/tm\/"
    #     num_frames=7
    #     width=421
    #     height=421

    #     ranks=(1 2 3 5 10 20 30)
    # fi
    # if [[ ${filename} == "tm.sort_ips.ap.bgp.10.sub_CN.txt.3600." ]]; then
    #     input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_sjtu_wifi\/tm\/"
    #     num_frames=7
    #     width=403
    #     height=403

    #     ranks=(1 2 3 5 10 20 30)
    # fi
    # #############
    if [[ ${filename} == "tm_download.sort_ips.ap.bgp.sub_CN.txt.3600.top400." ]]; then
        input_dir="\/u\/yichao\/anomaly_compression\/condor_data\/subtask_parse_sjtu_wifi\/tm\/"
        num_frames=8
        width=217
        height=400

        # ranks=(1 2 3 5 10 20 30 50 100)
        ranks=(150)
    fi


    seeds=(1 2 3 4 5 6 7 8 9 10)
    opt_swap_mats=(0 1 3)
    loss_rates=(0 0.01 0.05 0.1 0.2 0.3)
    group_sizes=(4)
    opt_types=(0 1 2 3 4)
    

    for seed in ${seeds[@]}; do
        for loss_rate in ${loss_rates[@]}; do
            for opt_swap_mat in ${opt_swap_mats[@]}; do
                for group_size in ${group_sizes[@]}; do
                    for rank in ${ranks[@]}; do
                        for opt_type in ${opt_types[@]}; do
                            echo ${func}.${filename}.${num_frames}.${width}.${height}.${group_size}.${rank}.${opt_swap_mat}.${opt_type}.${loss_rate}.${seed}
                            sed "s/INPUT_DIR/${input_dir}/g; s/FILENAME/${filename}/g;s/NUM_FRAMES/${num_frames}/g;s/WIDTH/${width}/g;s/HEIGHT/${height}/g;s/GROUP_SIZE/${group_size}/g;s/RANK/${rank}/g;s/THRESH/${thresh}/g;s/OPT_SWAP_MAT/${opt_swap_mat}/g;s/OPT_TYPE/${opt_type}/g;s/LOSS_RATE/${loss_rate}/g;s/SEED/${seed}/g;" ${func}.mother.sh > tmp.${func}.${filename}.${num_frames}.${width}.${height}.${group_size}.${rank}.${opt_swap_mat}.${opt_type}.${loss_rate}.${seed}.sh
                            sed "s/XXX/${filename}.${num_frames}.${width}.${height}.${group_size}.${rank}.${opt_swap_mat}.${opt_type}.${loss_rate}.${seed}/g" ${func}.mother.condor > tmp.${func}.${filename}.${num_frames}.${width}.${height}.${group_size}.${rank}.${opt_swap_mat}.${opt_type}.${loss_rate}.${seed}.condor
                            condor_submit tmp.${func}.${filename}.${num_frames}.${width}.${height}.${group_size}.${rank}.${opt_swap_mat}.${opt_type}.${loss_rate}.${seed}.condor
                            echo JOB J${cnt} tmp.${func}.${filename}.${num_frames}.${width}.${height}.${group_size}.${rank}.${opt_swap_mat}.${opt_type}.${loss_rate}.${seed}.condor >> tmp.$func.dag
                            cnt=$((${cnt} + 1))
                        done
                    done
                done
            done
        done
    done
done

echo $cnt / $num_jobs

# for (( i = ${num_jobs}; i < ${cnt}; i+=${num_jobs} )); do
#     for (( j = $i; j < $i + ${num_jobs} && j < ${cnt}; j++ )); do
#         pre=$(($j - ${num_jobs}))
#         echo PARENT J$j CHILD J${pre} >> tmp.$func.dag
#     done
# done

condor_submit_dag -maxjobs ${num_jobs} tmp.${func}.dag



