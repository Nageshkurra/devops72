yum install nginx -y
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

##Some files needs to be created

systemctl restart nginx
systemctl enable nginx