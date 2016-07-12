#! /bin/bash
# script to run MATLAB in the background under UNIX
# To run MATLAB in the background, you need to do the following:
#
# 1. redirect the standard input
# 2. redirect the standard output
# 3. eliminate the graphical output
# 4. call MATLAB as a background process 
#
# usage: matbg <infile> <outfile>
# If INFILE takes input arguments, enclose the function call in double quotes:
# matbg "foo(10)" <outfile>
# If you are not interested in saving the output, you can specify /dev/null as the second argument. 
# nohup matlab -nodisplay -nodesktop -nojvm -nosplash -r $1 > $2 &
# 
# Note: you can also renice a process with
# renice 19  -p 31335   

nohup nice -n 19  matlab -nodisplay -nodesktop -nojvm -nosplash -r $1 > $2 & 


# original csh code by mathworks found at
#http://www.mathworks.com/support/solutions/en/data/1-15F5B/index.html?product=ML&solution=1-15F5B
#! /bin/csh -f
#        # Clear the DISPLAY.
#        unsetenv DISPLAY  # unset DISPLAY for some shells
#        # Call MATLAB with the appropriate input and output,
#        # make it immune to hangups and quits using ''nohup'',
#        # and run it in the background.
#        nohup matlab -nodisplay -nodesktop -nojvm -nosplash -r $1 > $2 &

