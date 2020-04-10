# Apache requests by vhosts plugin for Zabbix with Discovery

This Zabbix plugin can monitoring numbers of requests by vhosts (ServerName).

It use discovery so your life will easy with this plugin.

Dependency:
- lynx

Install:
---
1. Import apache_vhosts_requests.xml in Zabbix webconsole.
2. Copy userparameter_apache_requests_by_vhosts.conf to Zabbix agent folder of target server.
3. Copy apache_vhosts_requests.sh to /etc/zabbix/scripts/ on target server.
3. Restart agent.
5. Add template to target server in Zabbix webconsole.

That is all.

If you use server-status in other uri then you can configure it:
Templates -> Template App Apache Requests by Vhosts -> Macros

**Note:** tested in version 4.4 but I think it can run with early versions too.
