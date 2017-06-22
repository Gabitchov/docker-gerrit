#!/bin/sh

function standard_config {
        git config -f /var/gerrit/etc/gerrit.config $1 $2
}

function secure_config {
        git config -f /var/gerrit/etc/secure.config $1 $2
}

echo "Config Gerrit"
standard_config gerrit.canonicalWebUrl "$GERRIT_WEB_URL"

echo "Config Database"
standard_config database.type "$GERRIT_DB_TYPE"
standard_config database.hostname "$GERRIT_DB_HOSTNAME"
standard_config database.port "$GERRIT_DB_PORT"
standard_config database.database "$GERRIT_DB_DATABASE"
standard_config database.username "$GERRIT_DB_USERNAME"
standard_config database.password "$GERRIT_DB_PASSWORD"
standard_config container.javaHome "$JAVA_HOME"
standard_config ldap.localUsernameToLowerCase true

echo "Config LDAP"
standard_config auth.type LDAP
standard_config ldap.server "$GERRIT_LDAP_SERVER"
standard_config ldap.username "$GERRIT_LDAP_USERNAME"
secure_config ldap.password "$GERRIT_LDAP_PWD"
standard_config ldap.referral follow
standard_config ldap.groupsVisibleToAll true
standard_config ldap.accountBase "$GERRIT_LDAP_ACCOUNT_BASE"
standard_config ldap.accountPattern "$GERRIT_LDAP_ACCOUNT_PATTERN"
standard_config ldap.accountFullname "$GERRIT_LDAP_ACCOUNT_FULLNAME"
standard_config ldap.accountEmailAddress "$GERRIT_LDAP_ACCOUNT_MAIL"
standard_config ldap.groupBase "$GERRIT_LDAP_GROUP_BASE"
standard_config ldap.groupPattern "$GERRIT_LDAP_GROUP_PATTERN"
standard_config ldap.groupMemberPattern "$GERRIT_LDAP_GROUP_MEMBERPATTERN"

echo "Config httpd"
standard_config httpd.listenurl "http://*:${GERRIT_PORT}/"

echo "Config http"
if [ "$HTTP_PROXY_HOST" -a "$HTTP_PROXY_PORT" ]; then standard_config http.proxy "${HTTP_PROXY_HOST}:${HTTP_PROXY_PORT}"; fi

echo "Configuration resume"
cat /var/gerrit/etc/gerrit.config

echo "Initialise DB of gerrit"
java "${JAVA_OPTIONS}" -jar /var/gerrit/bin/gerrit.war init --batch -d /var/gerrit

echo "Launch gerrit"
/var/gerrit/bin/gerrit.sh start && tail -f /var/gerrit/logs/error_log
