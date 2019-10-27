# Gridsome using docker
Develop &amp; Build Gridsome sites within Docker.

Place your gridsome site folder under this repo when cloned and simply run:
```
  docker run -it -p 8080:8080 truemedia/gridsome
```

# Build image
sudo docker build -t truemedia/gridsome .

# TODO list
- Sync volume (editing site files updates on docker image)
- Develop/build option
- Configurable host and ports
- New site option
