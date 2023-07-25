# Vod-Route 
Log-in Route that works with VOD files. 

# Steps To Upgrade The Code on Production

Work-Dir: k8s-master-production:/xxx/xxx/xxx/PORTAL/Vod-Route #NOTE Check the ".env" & "values" files. 

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:vod-pro-v1.0.5 .
   
3. ./Push-docker.sh ilayrubin/portal:vod-pro-v1.0.5
   
5. helm upgrade portal-vod ./vod-route-chart -n portal 

# Steps To Upgrade The Code on Development

Work-Dir: k8s-master-development:/xxx/xxx/xxx/PORTAL/Vod-Route #NOTE Check the ".env" & "values" files. 

Pay attention to the tag name, that is, every time you upload a version, just increase the number by 1.

1. docker build -t ilayrubin/portal:vod-dev-v1.0.5 .
   
3. ./Push-docker.sh ilayrubin/portal:vod-dev-v1.0.5
   
5. helm upgrade portal-vod ./vod-route-dev-chart -n portal 
