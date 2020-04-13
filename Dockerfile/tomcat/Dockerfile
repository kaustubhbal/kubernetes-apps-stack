FROM tomcat:8
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /usr/local/tomcat/webapps/student.war
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar /usr/local/tomcat/lib/mysql-connector.jar
ADD context.xml /usr/local/tomcat/conf/context.xml
