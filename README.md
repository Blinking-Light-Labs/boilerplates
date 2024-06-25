<p align="center">
  <img src="./assets/images/github-header-image.png" alt="Header">
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT">
  </a>
</p>

# :link: Structure

## :scroll: Scripts
- [Docker-API](./assets/scripts/docker-api-setup.sh) - script to setup docker's API. I use this mostly for homepage.
- [Pi Docker Install](./assets/scripts/pi-docker-install.sh) - script to install docker on raspberry pi.
- [Portainer Installer](./assets/scripts/portainer-install.sh) - script to install portainer on docker.
- [Dockge Installer](./assets/scripts/dockge-install.sh) - script to install dockge on docker.


## :japanese_castle: Stacks

### Below is Colapsable list of all the possible docker configs I have put together.

<details>
<summary> Click Here </summary>

- [Homepage](./stacks/homepage/) - compose stack for homepage and code-server. code-server is used to edit on the fly.
- [Monitoring](./stacks/monitoring/) - InfluxDB and Grafana Stack for close to real-time stats. 
- [Proxy Stack](./stacks/proxy/) - compose stack for cloudflare tunnels and playit.gg agent.
- [Starr Stack](./stacks/starr-stack/) - compose stack to spin up an arr stack.
- [Utility Stack](./stacks/utility/) - compose stack that contains watchtower and dozzle.

</details>


## :memo: Notes

> [!TIP]
> The script to install docker is mostly for supported installs via dockers website. If you're looking for a better way to install docker on a server try out my [script](https://github.com/ColoredBytes/Ez-Docker-Installer).
