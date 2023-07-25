# CRM-Website
The Production CRM: https://st-portal.online:3050/
The Development CRM: https://rt-dev.xyz:3050/
# Steps To Upgrade On Production 
Work-Dir: k8s-master-production:/xxx/xxx/xxx/CRM/CRM-Website #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:crm-v1.0.5 .
   
2. /Push-docker.sh ilayrubin/portal:crm-v1.0.5
   
3. helm upgrade crm ./crm-chart -n crm 


# Steps To Upgrade On Development 
Work-Dir: k8s-master-development:/xxx/xxx/xxx/CRM/CRM-Website #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:crm-dev-v1.0.5 -f dockerfile-dev .
   
2. ./Push-docker.sh ilayrubin/portal:crm-dev-v1.0.5
   
3. helm upgrade crm ./crm-dev-chart -n crm 
