# Simple Docker Stats monitoring plugin for Zabbix with Discovery

This Zabbix plugin can monitoring your Docker containers via Docker Stats. It is a very simple solution for mixed servers where not only containers run (so running native agent).

It use discovery so your life will easy with this plugin.

Install:
---
1. Import zbx_template_docker_stats.xml in Zabbix webconsole.
2. Copy userparameter_docker.conf to Zabbix agent folder of target server.
3. Restart agent.
4. You must set sudo (example: zabbix ALL=NOPASSWD: /usr/bin/docker).
5. Add template to target server in Zabbix webconsole.

That is all.

**Note:** tested in version 4.4 but I think it can run with early versions too.
