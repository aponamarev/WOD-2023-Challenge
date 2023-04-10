#!/bin/bash
echo -e "Start downloading \e[33mwaymo_open_dataset_v_2_0_0\e[0m - \e[31mTEST Set\e[0m"
URL="gs://waymo_open_dataset_v_2_0_0/testing"
echo -e "\e[31mWarning\e[0m: TESTING dataset size is: $(gsutil du -s -h ${URL})"
if [ $# -eq 0 ]; then
    echo -e "\e[31mError\e[0m: No destination folder was specifed. Please provide destination path."
    exit 1
fi

if [ -d "$1" ]; then
    echo "Data will be saved to ${1}"
else
    mkdir -p "$1"
    echo "Data will be saved to ${1}"
fi
gsutil -m cp -r ${URL} "$1"