# Galaxy - W4M
#
# VERSION       latest

FROM workflow4metabolomics/galaxy-workflow4metabolomics

MAINTAINER Arthur Eschenlauer, eschen@alumni.princeton.edu

# The following did not prove to be an effective way to change the 'admin' password from the default
#
# # TODO Replace the values for GALAXY_DEFAULT_ADMIN_PASSWORD and GALAXY_DEFAULT_ADMIN_KEY with your own temporary value
# #      To generate a value, try 'date | md5sum'.
# # TODO Replace GALAXY_CONFIG_BRAND with your own brand.
# ENV GALAXY_DEFAULT_ADMIN_PASSWORD=c5276ce5fd3fd38dae1687c2b4222ef4 \
#     GALAXY_DEFAULT_ADMIN_KEY=c5276ce5fd3fd38dae1687c2b4222ef4 \
#     GALAXY_LOGS_DIR=/home/galaxy/logs \
#     GALAXY_CONFIG_BRAND=Workflow4Metabolomics-eschen42 \
#     GALAXY_CONFIG_CONDA_AUTO_INIT=True \
#     GALAXY_CONFIG_CONDA_AUTO_INSTALL=True \
#     GALAXY_CONFIG_CONDA_PREFIX=/shed_tools/_conda
# 
# # Configure PostgreSQL
# # 1. Remove all old configuration
# # 2. Create DB-user 'galaxy' with password 'galaxy' in database 'galaxy'
# # 3. Create Galaxy Admin User 'admin@galaxy.org' with password and API key as specified above
# 
# RUN rm $PG_DATA_DIR_DEFAULT -rf && \
#     python /usr/local/bin/setup_postgresql.py --dbuser galaxy --dbpassword galaxy --db-name galaxy --dbpath $PG_DATA_DIR_DEFAULT && \
#     service postgresql start && \
#     . $GALAXY_VIRTUAL_ENV/bin/activate && \
#     sh create_db.sh -c $GALAXY_CONFIG_FILE && \
#     python /usr/local/bin/create_galaxy_user.py --user $GALAXY_DEFAULT_ADMIN_USER --password $GALAXY_DEFAULT_ADMIN_PASSWORD -c $GALAXY_CONFIG_FILE --key $GALAXY_DEFAULT_ADMIN_KEY && \
#     service postgresql stop

