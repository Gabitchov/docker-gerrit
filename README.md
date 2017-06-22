# Gerrit Docker installation
Installation of Gerrit with Docker 

## Configuration Variables

| Variable | Description |TYPE |Link|
|:-----------|:--------|------|-----|
| GERRIT_PORT | Port to listen |REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#httpd.listenUrl) |
| GERRIT_WEB_URL| Canonical address for Gerrit Web Site|REQUIRED | [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#gerrit.canonicalWebUrl)|
| GERRIT_DB_TYPE| Type of database used |REQUIRED|  [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#database.type)|
| GERRIT_DB_HOSTNAME| Hostname of the database|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#database.hostname)|
| GERRIT_DB_PORT | Port used to access to database|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#database.port)|
| GERRIT_DB_DATABASE | Name of the database used|REQUIRED | [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#database.database)|
| GERRIT_DB_USERNAME | User name used Gerrit to access to database|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#database.username)|
| GERRIT_DB_PASSWORD | Password of Gerrit account for database.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#database.password) |
| GERRIT_LDAP_SERVER | Address of the ldap server  |REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.server) |
| GERRIT_LDAP_USERNAME | Username of Administrator LDAP account.|REQUIRED | [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.username) |
| GERRIT_LDAP_PWD | Password of Adminstrator LDAP account.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.password) |
| GERRIT_LDAP_ACCOUNT_BASE | Base pattern to retrieve users in LDAP.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.accountBase)|
| GERRIT_LDAP_ACCOUNT_PATTERN | Pattern to retrieve users in LDAP.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.accountPattern) | 
| GERRIT_LDAP_ACCOUNT_FULLNAME | LDAP field for fullname in Gerrit account.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.accounFullName) |
| GERRIT_LDAP_ACCOUNT_EMAIL | LDAP field for email in Gerrit account.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.accountPattern) | 
| GERRIT_LDAP_GROUP_BASE | Base pattern to retrieve groups in LDAP.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.groupBase) | 
| GERRIT_LDAP_GROUP_PATTERN | Pattern to retrieve groups in LDAP.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.groupPattern) | 
| GERRIT_LDAP_GROUP_MEMBERPATTERN | Pattern to retrieve group members in LDAP.|REQUIRED| [Documentation](https://gerrit-documentation.storage.googleapis.com/Documentation/2.14.1/config-gerrit.html#ldap.groupMemberPattern) | 
| JAVA_OPTIONS | Options to run la JVM.|OPTIONAL|  | 
| HTTP_PROXY_HOST | Host of the proxy if Gerrit is executed behind one.|OPTIONAL|  |
| HTTP_PROXY_PORT | Port of the proxy if Gerrit is executed behind one.|OPTIONAL|  | 

## Docker Compose
A docker compose is available and configure with an LDAP and a PostGRESQL Database
 

