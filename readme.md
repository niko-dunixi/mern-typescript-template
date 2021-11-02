# mern-typescript-template

A quick-start template driven by container based development.

## Quick Start
If you are viewing this project on GitHub, select the ["Use this Template"](https://github.com/paul-nelson-baker/mern-typescript-template/generate) button.

Once you've cloned your new project locally, you can use `make` to start up your project

| Command | Description |
| - | - |
| `make up` | Will start the docker compose environment, mapping port 80 to your localhost under the `mern.localhost` domain |
| `make down` | Will tear down your docker compose environment |
| `make clean` | Will remove `node_modules` directories and clean up Docker volumes. Implies `make down`. |

You can visit [http://mern.localhost/](http://mern.localhost/) once you've started your stack and you'll be greeted by React running in development mode behind Traefik. Traefik also binds the backend to [http://mern.localhost/api](http://mern.localhost/api). You can make rest calls to your same host (no need to change port.

You can view the Traefik Dashboard by browsing to [http://localhost:8080](http://localhost:8080).

## Architecture

This is not truely a MERN stack, a MERN stack typically has the following components:
* MongoDB
* Express
* React
* Node

This project takes this definition liberally while adding typescript into the mix. Instead of vanilla Express, this template leverages [Ts.ED](https://tsed.io/) which is built _on-top_ of express. Otherwise, this can be considered a MERN stack.

### Components

The React project was generated via:
```bash
$ npx create-react-app --template typescript client
```
 and the backend was generated via:
```bash
$ mkdir -p server && cd server
$ tsed init .
```

There is probably a more elegant way to create this from scratch, but for the moment these components can be re-created by removing and re-creating them.
