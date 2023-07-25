# PortalWeb-Project
Transferring the company website called "Student Portal" to an environment that is fast, efficient, convenient by implementing the DevOps tools I engineered for them.
First, I created 2 environments, one for Development and one for Production.
Each environment contains a Kubernetes cluster infrastructure that contains 1 master and 2 worker nodes.
The master will manage the 2 worker nodes.
The 1st worker for running applications.
The 2nd worker for databases.
Why 2 environments?
2 environments are intended for the purpose of performing tests, improvements or any other changes in the Development environment. After that, if everything is in order, transfer to the Production environment, thus preventing us from many problems.

Second, I checked and saw that the company uses a lot of heavy files and videos, so I created another server whose role would be to save all the files and videos.
So that the 2 environments I created above can access the files on the server, I defined it as an NFS (Network-File-System) server.
