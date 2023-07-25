# FS_Portal 
The Production Students Portal: https://st-portal.online/
The Development Students Portal: https://rt-dev.xyz/
# Steps To Upgrade On Production 
Work-Dir: k8s-master-production:/home/ilay/DEVOPS/PORTAL/FS_Portal #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:pro-v1.0.5 .
   
2. /Push-docker.sh ilayrubin/portal:pro-v1.0.5
   
3. helm upgrade portal ./portal-chart -n portal 


# Steps To Upgrade On Development 
Work-Dir: development-testing:/home/ilay/devops/PORTAL/FS_Portal #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:dev-v1.0.5 -f dockerfile-dev .
   
2. ./Push-docker.sh ilayrubin/portal:dev-v1.0.5
   
3. helm upgrade portal ./portal-dev-chart -n portal 
