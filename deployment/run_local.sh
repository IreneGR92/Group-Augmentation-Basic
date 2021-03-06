#!/bin/bash

# You must specify a valid email address!
#SBATCH --mail-user=ig17c521@campus.unibe.ch

# Mail on NONE, BEGIN, END, FAIL, REQUEUE, ALL
#SBATCH --mail-type=end,fail

# Job name
#SBATCH --job-name="GroupAugmentation"

# Runtime and memory
#SBATCH --time=300:00:00
#SBATCH --mem-per-cpu=2G
#SBATCH --cpus-per-task=1

# Partition
#SBATCH --partition=long

# For parallel jobs

##SBATCH --nodes=5
##SBATCH --ntasks=5
##SBATCH --ntasks-per-node=1

##SBATCH --output=/path/to/outfile
##SBATCH --error=/path/to/errfile

# For array jobs
# Indicate how many input files you have
#SBATCH --array=0-5 //TODO: Number of runs, remember to change!

#### Your shell commands below this line ####

declare -a arr=(

"no-relatedness_Xn0.yml"
"no-relatedness_Xn1.yml"
"no-relatedness_Xn3.yml"
"Xn0.yml"
"Xn1.yml"
"Xn3.yml"


  #   new RUNS FOR GRAPH  #
#"default_m012-n12-RN.yml"
#"default_m012-n14-RN.yml"
#"default_m012-n16-RN.yml"
#"default_m012-n18-RN.yml"
#"default_m012-n1-RN.yml"
#"default_m012-n2-RN.yml"
#"default_m014-n12-RN.yml"
#"default_m014-n14-RN.yml"
#"default_m014-n16-RN.yml"
#"default_m014-n18-RN.yml"
#"default_m014-n1-RN.yml"
#"default_m014-n2-RN.yml"
#"default_m016-n12-RN.yml"
#"default_m016-n14-RN.yml"
#"default_m016-n16-RN.yml"
#"default_m016-n18-RN.yml"
#"default_m016-n1-RN.yml"
#"default_m016-n2-RN.yml"
#"default_m018-n12-RN.yml"
#"default_m018-n14-RN.yml"
#"default_m018-n16-RN.yml"
#"default_m018-n18-RN.yml"
#"default_m018-n1-RN.yml"
#"default_m018-n2-RN.yml"
#"default_m01-n12-RN.yml"
#"default_m01-n14-RN.yml"
#"default_m01-n16-RN.yml"
#"default_m01-n18-RN.yml"
#"default_m01-n1-RN.yml"
#"default_m01-n2-RN.yml"
#"default_m02-n12-RN.yml"
#"default_m02-n14-RN.yml"
#"default_m02-n16-RN.yml"
#"default_m02-n18-RN.yml"
#"default_m02-n1-RN.yml"
#"default_m02-n2-RN.yml"
#"noRelatedness_m012-n12-RN.yml"
#"noRelatedness_m012-n14-RN.yml"
#"noRelatedness_m012-n16-RN.yml"
#"noRelatedness_m012-n18-RN.yml"
#"noRelatedness_m012-n1-RN.yml"
#"noRelatedness_m012-n2-RN.yml"
#"noRelatedness_m014-n12-RN.yml"
#"noRelatedness_m014-n14-RN.yml"
#"noRelatedness_m014-n16-RN.yml"
#"noRelatedness_m014-n18-RN.yml"
#"noRelatedness_m014-n1-RN.yml"
#"noRelatedness_m014-n2-RN.yml"
#"noRelatedness_m016-n12-RN.yml"
#"noRelatedness_m016-n14-RN.yml"
#"noRelatedness_m016-n16-RN.yml"
#"noRelatedness_m016-n18-RN.yml"
#"noRelatedness_m016-n1-RN.yml"
#"noRelatedness_m016-n2-RN.yml"
#"noRelatedness_m018-n12-RN.yml"
#"noRelatedness_m018-n14-RN.yml"
#"noRelatedness_m018-n16-RN.yml"
#"noRelatedness_m018-n18-RN.yml"
#"noRelatedness_m018-n1-RN.yml"
#"noRelatedness_m018-n2-RN.yml"
#"noRelatedness_m01-n12-RN.yml"
#"noRelatedness_m01-n14-RN.yml"
#"noRelatedness_m01-n16-RN.yml"
#"noRelatedness_m01-n18-RN.yml"
#"noRelatedness_m01-n1-RN.yml"
#"noRelatedness_m01-n2-RN.yml"
#"noRelatedness_m02-n12-RN.yml"
#"noRelatedness_m02-n14-RN.yml"
#"noRelatedness_m02-n16-RN.yml"
#"noRelatedness_m02-n18-RN.yml"
#"noRelatedness_m02-n1-RN.yml"
#"noRelatedness_m02-n2-RN.yml"


)

for i in "${arr[@]}"; do
  echo $i
  screen -d -S ${i} -m ./build.sh ${i}

done

screen -list
