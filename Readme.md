1. Tại dự án docker bằng lệnh 
    npm init 
    cài đặt gói express
2. Viết file docker 
3. Build file (images) docker tại thư mục hiện tại
    docker build -t my-nodejs-app .
4. Sau khi build xong thì sẽ có image, tạo container từ image này
    docker run -d -p 3000:3000 --name my-running-app my-nodejs-app
        -d : chạy dưới nền
        -p : port của máy tính: port export từ container
        my-nodejs-app: tên của image
        --name: tên của container

### Lệnh quản lý Container:
   ## docker run
        Tạo và chạy một container từ một image.
        Ví dụ: docker run -d -p 3000:3000 my-image
            -d : chạy dưới nền
            -p : port của máy tính: port export từ container
            my-nodejs-app: tên của image
            --name: tên của container
    docker ps
        * List danh sách các container đang chạy
    docker login
        * Login vào tài khoản docker hub để push images
    docker logout
        * Logout docker hub
    docker search
        * docker search busybox
            Search các docker image có trên docker hub để cài đặt
    docker info
        * liệt kê thông tin docker, các container đang chạy, đang stop, cấu hình v..v...
    docker start
        
    docker restart
    docker rm
    docker exec
    docker logs
    docker build
    docker pull
    docker push
    docker images
    docker rmi
    docker tag
    docker volume create
    docker volume ls
    docker volume inspect
    docker volume rm
    docker network create
    docker network inspect
    docker network rm
    docker-compose up
    docker-compose down
    docker stats
    docker system df
    docker system prune

### Common Commands:
  run         Create and run a new container from an image
  exec        Execute a command in a running container
  ps          List containers
  build       Build an image from a Dockerfile
  pull        Download an image from a registry
  push        Upload an image to a registry
  images      List images
  login       Log in to a registry
  logout      Log out from a registry
  search      Search Docker Hub for images
  version     Show the Docker version information
  info        Display system-wide information

Management Commands:
  builder     Manage builds
  buildx*     Docker Buildx
  compose*    Docker Compose
  container   Manage containers
  context     Manage contexts
  debug*      Get a shell into any image or container
  desktop*    Docker Desktop commands (Alpha)
  dev*        Docker Dev Environments
  extension*  Manages Docker extensions
  feedback*   Provide feedback, right in your terminal!
  image       Manage images
  init*       Creates Docker-related starter files for your project
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  plugin      Manage plugins
  sbom*       View the packaged-based Software Bill Of Materials (SBOM) for an image
  scout*      Docker Scout
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Swarm Commands:
  swarm       Manage Swarm

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Global Options:
      --config string      Location of client config files (default "/Users/ssv01/.docker")
  -c, --context string     Name of the context to use to connect to the daemon (overrides
                           DOCKER_HOST env var and default context set with "docker context
                           use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket to connect to
  -l, --log-level string   Set the logging level ("debug", "info", "warn", "error",
                           "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "/Users/ssv01/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "/Users/ssv01/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/Users/ssv01/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Run 'docker COMMAND --help' for more information on a command.

For more help on how to use Docker, head to https://docs.docker.com/go/guides/


Docker Keyword: 
    FROM
    RUN
    CMD
    ENTRYPOINT
    WORKDIR
    COPY
    ADD
    EXPOSE
    VOLUME
    ENV
    ARG
    USER
    LABEL
    STOPSIGNAL
    HEALTHCHECK
