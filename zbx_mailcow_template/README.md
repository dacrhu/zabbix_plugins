# Simple Mailcow monitoring

This Zabbix plugin can monitoring your Mailcow server. Very simple, no need agent solution, this template use the Mailcow API.

Install:
---
1. Import zbx_mailcow_template.yaml in Zabbix webconsole.
2. Generate a read only API KEY (System -> Configuration -> Access) and set your Zabbix server IP to the allowed IP list.
3. Add template to target server in Zabbix webconsole.
4. Set values to the two macro (MAILCOW.APIKEY and MAILCOW.URL).

That is all.

**Note:** tested in version 6.0 LTS.
