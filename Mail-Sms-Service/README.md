# Mail-Sms-Service
server to service a different services coming from multiple servers

# Steps To Upgrade On Production 
Work-Dir: k8s-master-production:/xxx/xxx/xxx/CRM/Mail-Sms-Service #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:mailsms-v1.0.5 .
   
2. /Push-docker.sh ilayrubin/portal:mailsms-v1.0.5
   
3. helm upgrade mail-sms ./MailSms-chart -n crm 


# Steps To Upgrade On Development 
Work-Dir: k8s-master-development:/xxx/xxx/xxx/CRM/Mail-Sms-Service #NOTE Check Before Running The ./server/.env & values Files.

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:mailsms-dev-v1.0.5 .
   
2. ./Push-docker.sh ilayrubin/portal:mailsms-dev-v1.0.5
   
3. helm upgrade mail-sms ./MailSms-dev-chart -n crm 
