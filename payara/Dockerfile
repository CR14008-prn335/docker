FROM payara/server-full:latest
ENV JDBC_URL=https://jdbc.postgresql.org/download/postgresql-42.1.4.jar
RUN wget --quiet --no-check-certificate $JDBC_URL
RUN cp postgresql-42.1.4.jar /opt/payara41/glassfish/lib/
ADD psw.txt /psw.txt
RUN /opt/payara41/bin/asadmin start-domain
RUN /opt/payara41/bin/asadmin restart-domain && \
/opt/payara41/bin/asadmin create-jdbc-connection-pool --datasourceclassname=org.postgresql.ds.PGSimpleDataSource --restype=javax.sql.DataSource --property='user=mortal2017:password=prn335:url="jdbc:postgresql://172.18.0.1:5432/posts":portNumber=5432:dataBaseName=posts:driverClass=org.postgresql.Driver:serverName=172.18.0.1' pool_post --user admin --passwordfile /psw.txt && \
/opt/payara41/bin/asadmin create-jdbc-resource --connectionpoolid pool_post jndi_post --user admin --passwordfile /psw.txt

