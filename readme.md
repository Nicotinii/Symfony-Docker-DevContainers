
# Symfony Docker


[![PHP](https://img.shields.io/badge/PHP-8.2.7-blue)](https://www.php.net/)
[![NODE](https://img.shields.io/badge/Node-18.X-green)](https://github.com/nodesource/distributions)
[![SYMFONY](https://img.shields.io/badge/Symfony-6.3-FF0000)](https://github.com/nodesource/distributions)

My project involves using Symfony and Docker with Dev Containers. 
It helps me create a customized development environment for my Symfony application.   
With Docker, I can package and deploy my application consistently. 
Dev Containers simplifies dependency management and streamlines the development process. Together, Symfony, Docker, and Dev Containers enhance my workflow and ensure seamless application deployment.





## Installation
### Docker not install
If Docker is not already installed, follow these links to install it:

For [Windows](https://docs.docker.com/desktop/install/windows-install/): Please refer to the instructions specific to [Windows](https://docs.docker.com/desktop/install/windows-install/).  
For [Linux](https://docs.docker.com/desktop/install/linux-install/): Please refer to the instructions specific to [Linux](https://docs.docker.com/desktop/install/linux-install/).  
For [Macos](https://docs.docker.com/desktop/install/mac-install/):  Please refer to the instructions specific to [Macos](https://docs.docker.com/desktop/install/mac-install/).

### Docker installed

Clone the repository of your choice and using the following command:
exemple select branch Symfony-6.3 or Symfony-6.3-OD (OD is Only Docker is a repo without symfony generate)

```bash
git clone "url"
```

#### Open the cloned repository in Visual Studio Code (VSCode).

Download the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension by Microsoft and the [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) extension if you haven't already.

#### After installing the extensions
Press ```F1``` in VSCode and select "Dev Containers: Open Folder in Dev Container" from the dropdown menu.

Let the magic happen as the dev container is set up for you.

### OnlyDocker repo
a ``` make new ``` command will be available for you to use.

### Symfony repo
Simply run the command ``` make install ``` to proceed.

Please note that these instructions assume a basic familiarity with using Git, Docker, and Visual Studio Code.
    
## Makefile

To use the Makefile in CMD, navigate to its directory and run "make [target]". Replace "[target]" with the desired target name, like "install" or "run".

#### help:

Displays usage instructions and a list of available targets with their descriptions.

#### new:

Creates a new Symfony project using the symfony command.  
Installs yarn using npm.  
Requires the symfony/webpack-encore-bundle package using composer.  
Prompts the user to cut and paste the symfony project folder to the desired location.  
Cleans up the temporary symfony folder.  
#### install:

Requires the symfony/orm-pack and symfony/maker-bundle packages using composer.
Invokes the yarn target.  
#### yarn:

Requires the symfony/webpack-encore-bundle package using composer.  
Installs JavaScript dependencies using yarn install.
#### run:

Starts the Symfony development server using the symfony command.
#### runall:

Starts both the Symfony development server and the webpack Encore dev server concurrently using the symfony and yarn commands respectively.
## MariaDB & PhpMyAdmin for the database

If you want access to phpmyadmin go to http://localhost:8090/ 
for connection by default is
Server : db
User : mariadb
Password : mariadb

If you prefer to use the command prompt with MariaDB, it would be:
```bash
mysql -h 127.0.0.1 -P 3306 --protocol=tcp -u root -p
```
Password: mariadb
## Authors

- [@Nicotinii](https://github.com/Nicotinii)

