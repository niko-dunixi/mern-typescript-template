# mern-typescript-template

A quick-start template driven by container based development.

## Architecture

This is not truely a MERN stack, a MERN stack typically has the following components:
* MongoDB
* Express
* React
* Node

This project takes this definition liberally while adding typescript into the mix. Instead of vanilla Express, this template leverages [Ts.ED](https://tsed.io/) which is built on top of express. Otherwise, this can be considered a MERN stack.

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
