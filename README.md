<p align="center">
  <img src="./assets/images/github-header-image.png" alt="Header">
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License: MIT">
  </a>
</p>

# :link: Structure

## :scroll: Scripts

- [Pi Docker Install](./assets/scripts/pi-docker-install.sh) - script to install docker on raspberry pi.
- [Portainer Installer](./assets/scripts/portainer-install.sh) - script to install portainer on docker.
- [Dockge Installer](./assets/scripts/dockge-install.sh) - script to install dockge on docker.


## :japanese_castle: Stacks

### Below is Colapsable list of all the possible docker configs I have put together.

<details>
<summary> Click Here </summary>

- [FreshRSS](./stacks/freshrss/) - compose file to spin up a freshrss container.
- [Homepage](./stacks/homepage/) - compose stack for homepage and code-server. code-server is used to edit on the fly.
- [Proxy Stack](./stacks/proxy/) - compose stack for cloudflare tunnels and playit.gg agent.
- [Starr Stack](./stacks/starr-stack/) - compose stack to spin up an arr stack.
- [Utility Stack](./stacks/utility/) - compose stack that contains watchtower and dozzle.
- [Vaultwarden](./stacks/vaultwarden/) - compose a file to spin up a vaultwarden container.

</details>

## :file_folder: Configs

- [Homepage Extras](./assets/homepage-extras/) - Extras for [Homepage](https://gethomepage.dev/latest/) mostly icons.



## :memo: Notes

> [!TIP]
> The script to install docker is mostly for supported installs via dockers website. If you're looking for a better way to install docker on a server try out my [Ez-Docker-Installer](https://github.com/ColoredBytes/Ez-Docker-Installer) script.

> [!NOTE]
> Feel free to fork this repo and customize to your own liking!

