
# Basic Sheel Scripts
This project contains some basic shell scripts that one might useful

# usage of countFiles.sh
usage

    $ ./countFiles directory extension
  or
  

    $ ./countFiles directory

example:-

 

     aman@aman:/tmp/tempdir> tree . - 1.pdf
     - 1.txt
     - 2.pdf
     - 2.txt
     - 3.pdf
     - 3.txt
     - 4.txt
     - 5.txt
     ‘-- subdir - 1.txt
     - 2.txt
     - 3.txt
     
     aman@aman:/tmp/tempdir> ./countFiles.sh /tmp/tempdir 8
     
     aman@aman:/tmp/tempdir> ./countFiles.sh /tmp/tempdir .pdf 3 
     
     aman@aman:/tmp/tempdir> ./countFiles.sh /tmp/tempdir .txt 5 

# usage of uname.sh
usage

    $ uname.sh username passwdfile

example:-

Suppose the input file contains the following lines :

    aman@aman:~$ cat input.txt
    root:x:0:0:root:/root:/bin/bash
    hplip:x:114:7:HPLIP system user,,,:/var/run/hplip:/bin/false
    pulse:x:115:122:PulseAudio daemon,,,:/var/run/pulse:/bin/false
    aman:x:1000:1000:Aman Agrawal,,,:/home/aman:/bin/bash
    sshd:x:118:65534::/var/run/sshd:/usr/sbin/nologin
    
    aman@aman:~$ ./uname.sh input.txt aman
    Aman Agrawal,,,
    
    aman@aman:~$ ./uname.sh input.txt pulse
    PulseAudio daemon,,,
     


# usage of eval.sh
usage

    $ ./eval.sh file

example:-

 

    Suppose the input file contains the following lines :
    
    aman@aman:~> cat input.txt
    100 +
    20 +
    40 -
    10 /
    60 *
    
    aman@aman:~> ./eval.sh input.txt
    480
    
    Explanation: The scripts starts with 0 and then performs the operations as follows
    0 + 100 = 100
    100 + 20 = 120
    120 - 40 = 80
    80 / 10 = 8
    8 * 60 = 480
    Thus the answer is 480




# usage of backup.sh
usage

    $ backup.sh directory1 directory1

example:-

     aman@aman:/dir1> tree . - 1.txt
     - 2.txt
     - 3.pdf
     - 3.txt
     - 4.txt
     - 5.txt
     ‘-- subdir - 2.txt
     - 3.txt

     aman@aman:/dir2> tree . - 1.pdf
     - 2.pdf
     - 2.txt
     - 3.txt
     - 5.txt
     ‘-- subdir - 1.txt
     - 3.txt

     aman@aman:> ./backup.sh /dir1 /dir2 Files copied from /dir1 to /dir2 are: 
     1.txt
     4.txt
     subdir/2.txt 
     Files copied from /dir2 to /dir1 are: 
     1.pdf
     2.pdf
     subdir/1.txt 
