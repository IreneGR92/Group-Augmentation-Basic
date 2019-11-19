#!/usr/bin/env bash

declare -a arr=(

#    "bias1.yml"
#    "bias1-RN.yml"
#    "bias2.yml"
#    "bias2-RN.yml"
#    "bias3.yml"
#    "bias3-RN.yml"
#    "bias5.yml"
#    "bias5-RN.yml"
#    "bias7.yml"
#    "bias7-RN.yml"
#    "bias10.yml"
#    "bias10-RN.yml"
#    "bias10-X06-NRN.yml"
#    "bias10-X06-RN.yml"
#    "RN-Dispersal.yml"
#    "RN-Help.yml"
#    "X06-NRN.yml"
#    "X06-RN.yml"
#    "X06-Xh06-Xn06-NRN.yml"
#    "X06-Xh06-Xn06-RN.yml"

#    "bias1-No_GA.yml"
#    "bias1-RN-No_GA.yml"
#    "bias2-No_GA.yml"
#    "bias2-RN-No_GA.yml"
#    "bias3-No_GA.yml"
#    "bias3-RN-No_GA.yml"
#    "bias5-No_GA.yml"
#    "bias5-RN-No_GA.yml"
#    "bias7-No_GA.yml"
#    "bias7-RN-No_GA.yml"
#    "bias10-No_GA.yml"
#    "bias10-RN-No_GA.yml"
#    "bias10-X06-NRN-No_GA.yml"
#    "bias10-X06-RN-No_GA.yml"
#    "RN-Dispersal-No_GA.yml"
#    "RN-Help-No_GA.yml"
#    "X06-NRN-No_GA.yml"
#    "X06-RN-No_GA.yml"
#    "X06-Xh06-Xn06-NRN-No_GA.yml"
#    "X06-Xh06-Xn06-RN-No_GA.yml"

#    "bias1.yml"
#    "bias1-RN.yml"
#    "bias2.yml"
#    "bias2-RN.yml"
#    "bias3.yml"
#    "bias3-RN.yml"
#    "bias4.yml"
#    "bias4-RN.yml"
#    "bias1-m01.yml"
#    "bias1-RN-m01.yml"
#    "bias2-m01.yml"
#    "bias2-RN-m01.yml"
#    "bias3-m01.yml"
#    "bias3-RN-m01.yml"
#    "bias4-m01.yml"
#    "bias4-RN-m01.yml"
#    "bias1-m03.yml"
#    "bias1-RN-m03.yml"
#    "bias2-m03.yml"
#    "bias2-RN-m03.yml"
#    "bias3-m03.yml"
#    "bias3-RN-m03.yml"
#    "bias4-m03.yml"
#    "bias4-RN-m03.yml"
#    "K2.yml"
#    "K2-RN.yml"
#    "Xh2.yml"
#    "Xh2-RN.yml"
#    "Xn1.yml"
#    "Xn1-RN.yml"
#    "Xn0-NRN.yml"
#    "Xn0-RN.yml"

#    "bias1-NoGA.yml"
#    "bias1-RN-NoGA.yml"
#    "bias2-NoGA.yml"
#    "bias2-RN-NoGA.yml"
#    "bias3-NoGA.yml"
#    "bias3-RN-NoGA.yml"
#    "bias4-NoGA.yml"
#    "bias4-RN-NoGA.yml"
#    "bias1-m01-NoGA.yml"
#    "bias1-RN-m01-NoGA.yml"
#    "bias2-m01-NoGA.yml"
#    "bias2-RN-m01-NoGA.yml"
#    "bias3-m01-NoGA.yml"
#    "bias3-RN-m01-NoGA.yml"
#    "bias4-m01-NoGA.yml"
#    "bias4-RN-m01-NoGA.yml"
#    "bias1-m03-NoGA.yml"
#    "bias2-m03-NoGA.yml"
#    "bias2-RN-m03-NoGA.yml"
#    "bias3-m03-NoGA.yml"
#    "bias3-RN-m03-NoGA.yml"
#    "bias4-m03-NoGA.yml"
#    "bias4-RN-m03-NoGA.yml"
#    "K2-NoGA.yml"
#    "K2-RN-NoGA.yml"
#    "Xh2-NoGA.yml"
#    "Xh2-RN-NoGA.yml"
#    "Xn1-NoGA.yml"
#    "Xn1-RN-NoGA.yml"

    "bias1-LSF.yml"
    "bias1-RN-LSF.yml"
    "bias2-LSF.yml"
    "bias2-RN-LSF.yml"
    "bias3-LSF.yml"
    "bias3-RN-LSF.yml"
    "bias4-LSF.yml"
    "bias4-RN-LSF.yml"
    "bias1-m01-LSF.yml"
    "bias1-RN-m01-LSF.yml"
    "bias2-m01-LSF.yml"
    "bias2-RN-m01-LSF.yml"
    "bias3-m01-LSF.yml"
    "bias3-RN-m01-LSF.yml"
    "bias4-m01-LSF.yml"
    "bias4-RN-m01-LSF.yml"
#    "bias1-m03-LSF.yml"
#    "bias1-RN-m03-LSF.yml"
#    "bias2-m03-LSF.yml"
#    "bias2-RN-m03-LSF.yml"
#    "bias3-m03-LSF.yml"
#    "bias3-RN-m03-LSF.yml"
#    "bias4-m03-LSF.yml"
#    "bias4-RN-m03-LSF.yml"
#    "K2-LSF.yml"
#    "K2-RN-LSF.yml"
#    "Xh2-LSF.yml"
#    "Xh2-RN-LSF.yml"
#    "Xn1-LSF.yml"
#    "Xn1-RN-LSF.yml"
		)



for i in "${arr[@]}"
do
echo $i
    screen  -d -S ${i} -m ./build.sh ${i}

done

screen -list

