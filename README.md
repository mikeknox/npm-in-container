# NPM in a container

Scripts / docker files to run Node in a container.
By default the version of node tagged in *dockerhub* as `latest` is used.

To use a specific version of Node, set `NODE_VER` to a Node Dockkerhub tag.

## Usage

### Latest (at time of setup)

```bash
npm install
npm run watch

```

### Specific version

```bash
npm12.10.0 install
npm12.10.0 run watch

```

## Setup

### Latest - at time of setup

```bash
. ./include.sh
```

### Or a specific version

```bash
NODE_VER=12.10.0 . ./include.sh
```
