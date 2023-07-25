# rtcv
routes to enter leads inti DB

# Steps To Upgrade On Production 
Work-Dir: k8s-master-production:/xxx/xxx/xxx/CRM/rtcv #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:rtcv-v1.0.5 .
   
2. /Push-docker.sh ilayrubin/portal:rtcv-v1.0.5
   
3. helm upgrade rtcv ./rtcv-chart -n crm 


# Steps To Upgrade On Development 
Work-Dir: k8s-master-development:/xxx/xxx/xxx/CRM/rtcv #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:rtcv-dev-v1.0.5 .
   
2. ./Push-docker.sh ilayrubin/portal:rtcv-dev-v1.0.5
   
3. helm upgrade rtcv ./rtcv-dev-chart -n crm 
