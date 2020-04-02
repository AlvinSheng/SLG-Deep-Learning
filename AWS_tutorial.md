**1**.

Follow the steps listed in B.3, page 321 in appendix B.

For step 2, you can click the first choice, "Deep Learning AMI (Ubuntu 18.04) Version 27.0".

For step 4, you can just click "Review and Launch", since defaults are fine.

You may fail to launch the instance at this step, due to a current vCPU limit of zero. If that's the case, go to the Limits tab, "Calculate vCPU limit", add the p2.xlarge instance type, click on "Request limit increase", and create a case. Say that you need the increase in limit because you're learning how to use deep learning, or something like that. AWS should respond back promptly. If they say no to the limit request, be persistent, and then they'll probably give it to you.

For step 5, copy and paste the entire example command "ssh -i "aws.pem" ubuntu..."" into your terminal. In the example command, replace "aws.pem" (or whatever your private key file is named) with the full directory, e.g. "/Users/Alvin/Documents/aws.pem". 

If that doesn't work because your key is publicly viewable, use the chmod command as suggested in the instructions.

Your terminal should now say "ubuntu@ip-series of numbers:~" or something like that. 





**2**. 

*I put the relevant terminal commands here, to copy+paste for your convenience. Because of issues with escape characters and formatting, you should go into edit mode, and then copy+paste the requisite commands.*

sudo /bin/bash -c "echo 'deb http://cran.rstudio.com/bin/linux/ubuntu \ xenial/' >> /etc/apt/sources.list"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo apt-get update
sudo apt-get install r-base

**Note**: the link suggested in the book is wrong. The second to fourth commands below have been corrected accordingly (see https://rstudio.com/products/rstudio/download-server/debian-ubuntu/)

gpg --keyserver keys.gnupg.net --recv-keys 3F32EE77E331692F
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5033-amd64.deb

*And then, when you run the following command*

dpkg-sig --verify rstudio-server-1.2.5033-amd64.deb

*You should get the following output*

Processing rstudio-server-1.2.5033-amd64.deb...
GOODSIG _gpgbuilder FE8564CFF1AB93F1728645193F32EE77E331692F 1575443526

*If you got that output, continue with the suggested command in the appendix, which have been modified below since we're installing rstudio-server-1.2.5033-amd64.deb instead of rstudio-server-latest-amd64.deb*

sudo gdebi rstudio-server-1.2.5033-amd64.deb

*The below command didn't work for me. Trying to troubleshoot rn*

sudo /bin/bash -c "echo 'session-timeout-minutes=0' >> \ /etc/rstudio/rsession.conf" 

*Replace <username> with your desired username. You will then be asked to make a new password and give optional personal information.*

sudo adduser <username>

*I got 'rsession: no process found' after the below command.*

sudo rstudio-server restart

**3**.

CUDA="/usr/local/cuda-8.0/lib64:/usr/local/ \ cuda-8.0/extras/CUPTI/lib64:/lib/nccl/cuda-8"
sudo /bin/bash -c "echo 'rsession-ld-library-path=${CUDA}' >> \ /etc/rstudio/rserver.conf"
