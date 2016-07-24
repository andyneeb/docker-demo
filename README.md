# docker-demo
A simple project to demonstrate Docker basics
 
# 01-jboss-eap
Plain EAP64 on CentOS

Prerequisite: Access to Dockerhub or jboss/base-jdk:8 in local Cache

1.) Build new Image
./build
2.) Run Container and bind to 19990 on localhost
./run
3.) Clean Up (stop Container & delete Image
./cleanup


# 02-jboss-eap-with-app
Ticket Monster on EAP64

Prerequisite: Image EAP64 in local cache (run ./01-jboss-eap/build)
  
1.) Build new Image by adding a .WAR to an existing JBoss EAP image
./build
2.) Run Container and bind to 18080 on localhost
./run
3.) Clean Up (stop Container & delete Image
./cleanup


# 03-tomcat-with-app
Hello World on Tomcat 8

Prerequisite: Access to Dockerhub or tomcat:8 in local Cache

1.) Build new Image
./build
2.) Run Container and bind to 8888 on localhost
./run
3.) Clean Up (stop Container & delete Image
./cleanup

