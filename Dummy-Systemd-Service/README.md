## Dummy Systemd Service


Place dummy script into 
   `/opt/scripts`

Make dummy script executable
   `chmod +x ./dummy.sh `

Place .service file into
   `/etc/systemd/system`

Run && Enable service
    `sudo systemctl enable dummy.service && sudo systemctl start dummy.service`

This project is part of [roadmap.sh](https://roadmap.sh/projects/log-archive-tool) DevOps projects.

