# Simple Monitoring
A bash project that automates a basic Netdata monitoring setup, dashboard test, and cleanup flow.

## Getting Started
1. **Go to https://learn.netdata.cloud/docs/netdata-agent/installation/linux**
	```
	curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh
	```

2. **Open dashboard**
	```
	http://localhost:19999
	```
3. **Create a new dashboard**

4. **Create some alerts**

5. done

## Scripts
- `setup.sh`: installs Netdata on a Linux system and prepares the monitoring dashboard.
- `test_dashboard.sh`: generates system load so you can verify the dashboard and charts.
- `cleanup.sh`: removes Netdata and cleans up the system.

This project is part of [roadmap.sh](https://roadmap.sh/projects/simple-monitoring-dashboard) DevOps projects.
