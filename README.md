# Project At Real Time Group Company 
My first job as a DevOps Engineer and my first practical project.

# Introduction
I came to a company with a messy and inefficient infrastructure, without a DevOps engineer to manage the company's infrastructure.
My task was to manage the company's infrastructure and move all the applications and services that are currently running to a more organized environment using Kubernetes.
This project required a lot of self-learning from me since no one knows the things that run in the system because an external company that you can no longer communicate with prepared the applications, services, and links.
That's why this project required me to research things in depth and solve them until I crack the problem and find the appropriate solution.
After a lot of thinking and an in-depth investigation of the company's servers, I concluded that I perform the following process:

# First, I created 2 environments, one for Development and one for Production.
Each environment contains a Kubernetes cluster infrastructure that includes 1 master and 2 worker nodes.
The master will manage the 2 worker nodes.
The 1st worker for running applications.
The 2nd worker for databases.

# Why I Need 2 Environments?
2 environments are designed to make a separation between an environment that performs development, tests, improvements, or any other changes and an environment that is used by our customers in real-time.
After that, after a thorough check, if everything is in order, I transfer the changes to the Production environment, thus preventing us from many problems.

# Second, I created another server whose role will be to save all the files and videos.
After an in-depth investigation that I performed on the company's servers, I saw that the company uses a lot of heavy files and videos.
So that the 2 environments I created above can access the files on the server, I defined it as an NFS (Network-File-System) server.
