# cowsy

In my project, I set up a server of jenkins on ec2 on aws cloud using terraform after I opened an account on github and
created a private repository, I used ssh key to connect between them. in jenkins i used multi branch pipeline to pull the
source code from github, build and run the program in a container with docker, execute a script(bash script) that I wrote
to test the connection and finely I used terraform to upload file to s3 bucket create vpc with two subnet one private to the
program and the second public to an nginx server who will direct all requests to the program.
