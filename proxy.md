* tinyproxy
User tinyproxy
Group tinyproxy
Port 8080
Timeout 600
DefaultErrorFile "/usr/share/tinyproxy/default.html"
StatFile "/usr/share/tinyproxy/stats.html"
Syslog On
LogLevel Connect
PidFile "/run/tinyproxy/tinyproxy.pid"
MaxClients 128
Allow <CIDR>
ViaProxyName "tinyproxy"
Filter "/etc/tinyproxy/filter"
ConnectPort 443
ConnectPort 563

* /etc/privoxy/config
user-manual /usr/share/doc/privoxy/user-manual
confdir /etc/privoxy
logdir /var/log/privoxy
actionsfile match-all.action # Actions that are applied to all sites and maybe overruled later on.
actionsfile default.action   # Main actions file
actionsfile user.action      # User customizations
filterfile default.filter
filterfile user.filter      # User customizations
logfile logfile
listen-address  0.0.0.0:<port>
toggle  1
enable-remote-toggle  0
enable-remote-http-toggle  0
enable-edit-actions 0
enforce-blocks 0
permit-access <CIDR>
buffer-limit 8192
enable-proxy-authentication-forwarding 0
forwarded-connect-retries  0
accept-intercepted-requests 0
allow-cgi-request-crunching 0
split-large-forms 0
keep-alive-timeout 300
tolerate-pipelining 1
socket-timeout 300
receive-buffer-size 32768

* /etc/privoxy-blocklist.conf[https://github.com/Andrwe/privoxy-blocklist]

URLS=("https://easylist-downloads.adblockplus.org/easyprivacy+easylist.txt" "https://easylist-downloads. adblockplus.org/easylistchina.txt")
INIT_CONF="/etc/conf.d/privoxy"
PRIVOXY_USER="privoxy"
PRIVOXY_GROUP="root"
PRIVOXY_CONF="/etc/privoxy/config"
TMPNAME="$(basename "$(readlink -f "${0}")")"
TMPDIR="/tmp/${TMPNAME}"
DBG=0

* vim for privoxy-blocklist
:%s#^-#*-#
:%s#\[/&:?=_\]#/#g
:%s#^\.\.\*#*#
:%s#\\\.\.\*#.*#
:%s#^\^https\?##
/^:
:%s#//#/#

:%s#^\([^/]\+\)\\\.\([^/]\+\)#\1.\2#
:%s#^\\\.#.#
:%s#^\([^/]\+\)\\\.$#\1.#
:%s#^\.\(\d\+\.\d\+\)#\1#

:%s#^/#*/#
:%s#^:#*:#

