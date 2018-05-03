# Thank you! 
# https://github.com/MaksymBilenko/docker-oracle-12c 
# https://hub.docker.com/r/sath89/oracle-12c/ 
FROM sath89/oracle-12c

# disables apex and em
ENV WEB_CONSOLE=false    

# sets it to import set-up scripts
ENV IMPORT_FROM_VOLUME=true

# add set up scripts and make executable
ADD oracle-sql/01-create-graphql-user.sql /docker-entrypoint-initdb.d
ADD oracle-sql/02-demo-data-oracle.sql /docker-entrypoint-initdb.d
RUN chmod -R +x /docker-entrypoint-initdb.d

# original image contains entrypoint script
ENTRYPOINT [ "bash", "entrypoint.sh" ]